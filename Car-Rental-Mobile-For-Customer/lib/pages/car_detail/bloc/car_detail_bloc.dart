import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/location.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/pages/car_detail/enums/car_address_type.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_detail_event.dart';

part 'car_detail_state.dart';

part 'car_detail_bloc.freezed.dart';

class CarDetailBloc extends Bloc<CarDetailEvent, CarDetailState> {
  CarDetailBloc({
    required this.mapsRepository,
    required this.userRepository,
    required this.carRepository,
  }) : super(const CarDetailState.initial()) {
    on<_Started>(_onStarted);
    on<_RentalCarTypeChanged>(_onRentalCarTypeChanged);
    on<_PromotionChanged>(_onPromotionChanged);
  }

  final MapsRepository mapsRepository;
  final UserRepository userRepository;
  final CarRepository carRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarDetailState> emit,
  ) async {
    emit(const CarDetailState.loading());

    final carResult = await carRepository.carById(event.carId);

    if (carResult is ApiError) {
      emit(const CarDetailState.failure(message: 'Xe không tồn tại'));
      return;
    }

    final car = (carResult as ApiSuccess<Car>).value;

    final carAddressType =
        event.address != null ? CarAddressType.customer : CarAddressType.car;

    final currentDate = DateTime.now();
    final startDate = event.startDate ??
        DateTime(
          currentDate.year,
          currentDate.month,
          currentDate.day,
          currentDate.hour + 2,
          currentDate.minute,
          0,
          0,
          0,
        );
    final endDate = event.endDate ??
        startDate.add(
          const Duration(
            days: 1,
          ),
        );

    String address = event.address ?? '';
    double latitude = event.latitude ?? 0.0;
    double longitude = event.longitude ?? 0.0;

    final user = await userRepository.getProfile();

    // get from my address
    if (address.isEmpty) {
      address = user?.address ?? '';

      if (user != null) {
        final placeResult = await mapsRepository.addressToCoordinate(
            address: user.address ?? '');

        if (placeResult is ApiSuccess) {
          final place = (placeResult as ApiSuccess<Place?>).value;
          if (place != null) {
            latitude = place.geometry.location.lat;
            longitude = place.geometry.location.lng;
          }
        }
      }
    }

    // get from current location
    if (address.isEmpty) {
      final position = await determineCurrentPosition();
      if (position != null) {
        longitude = position.longitude;
        latitude = position.latitude;

        final locateResult = await mapsRepository.coordinateToAddress(
          lng: position.longitude,
          lat: position.latitude,
        );

        if (locateResult is ApiSuccess) {
          final locate = (locateResult as ApiSuccess<Place>).value;

          address = locate.formattedAddress;
        }
      }
    }

    emit(CarDetailState.success(
      car: car,
      address: address,
      startDate: startDate,
      endDate: endDate,
      latitude: getDeliveryLatitude(
        carAddressType,
        car.location.latitude,
        latitude,
      ),
      longitude: getDeliveryLongitude(
        carAddressType,
        car.location.longitude,
        longitude,
      ),
      carAddressType: carAddressType,
      deliveryAddress: getDeliveryAddress(
        carAddressType,
        await coordinateToAddress(
          car.location.latitude,
          car.location.longitude,
        ),
        address,
      ),
      deliveryDistance: await getCarDeliveryDistance(
        carAddressType,
        car,
        latitude,
        longitude,
      ),
      user: user,
    ));
  }

  FutureOr<void> _onRentalCarTypeChanged(
    _RentalCarTypeChanged event,
    Emitter<CarDetailState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;

    final customerLocation = await addressToCoordinate(
      currentState.address,
    );

    emit(currentState.copyWith(
      carAddressType: event.carAddressType,
      deliveryAddress: getDeliveryAddress(
        event.carAddressType,
        await coordinateToAddress(
          currentState.car.location.latitude,
          currentState.car.location.longitude,
        ),
        currentState.address,
      ),
      latitude: getDeliveryLatitude(
        event.carAddressType,
        currentState.car.location.latitude,
        customerLocation.lat,
      ),
      longitude: getDeliveryLongitude(
        event.carAddressType,
        currentState.car.location.longitude,
        customerLocation.lng,
      ),
      deliveryDistance: await getCarDeliveryDistance(
        event.carAddressType,
        currentState.car,
        getDeliveryLatitude(
          event.carAddressType,
          currentState.car.location.latitude,
          customerLocation.lat,
        ),
        getDeliveryLongitude(
          event.carAddressType,
          currentState.car.location.longitude,
          customerLocation.lng,
        ),
      ),
    ));
  }

  String getDeliveryAddress(
    CarAddressType carAddressType,
    String carAddress,
    String customerAddress,
  ) {
    return carAddressType == CarAddressType.car ? carAddress : customerAddress;
  }

  Future<String> coordinateToAddress(double latitude, double longitude) async {
    final locateResult = await mapsRepository.coordinateToAddress(
      lng: longitude,
      lat: latitude,
    );

    if (locateResult is ApiSuccess) {
      final locate = (locateResult as ApiSuccess<Place>).value;

      return locate.formattedAddress;
    }
    return '';
  }

  Future<Location> addressToCoordinate(String address) async {
    final placeResult = await mapsRepository.addressToCoordinate(
      address: address,
    );

    if (placeResult is ApiSuccess) {
      final place = (placeResult as ApiSuccess<Place?>).value;
      if (place != null) {
        return Location(
          lat: place.geometry.location.lat,
          lng: place.geometry.location.lng,
        );
      }
    }
    return const Location(lat: 0.0, lng: 0.0);
  }

  double getDeliveryLatitude(
    CarAddressType carAddressType,
    double carLatitude,
    double customerLatitude,
  ) {
    return carAddressType == CarAddressType.car
        ? carLatitude
        : customerLatitude;
  }

  double getDeliveryLongitude(
    CarAddressType carAddressType,
    double carLongitude,
    double customerLongitude,
  ) {
    return carAddressType == CarAddressType.car
        ? carLongitude
        : customerLongitude;
  }

  Future<double> getCarDeliveryDistance(
    CarAddressType carAddressType,
    Car car,
    double latitude,
    double longitude,
  ) async {
    if (carAddressType == CarAddressType.car) return 0.0;

    final distanceResult = await mapsRepository.getDistance(
      lat1: car.location.latitude,
      lng1: car.location.longitude,
      lat2: latitude,
      lng2: longitude,
    );

    return distanceResult ?? 0;
  }

  FutureOr<void> _onPromotionChanged(
    _PromotionChanged event,
    Emitter<CarDetailState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;

    emit(currentState.copyWith(
      promotion: event.promotion,
    ));
  }
}
