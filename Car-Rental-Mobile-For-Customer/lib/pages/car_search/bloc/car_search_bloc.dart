import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_search_bloc.freezed.dart';
part 'car_search_event.dart';
part 'car_search_state.dart';

class CarSearchBloc extends Bloc<CarSearchEvent, CarSearchState> {
  CarSearchBloc({
    required this.mapsRepository,
    required this.carRepository,
  }) : super(const CarSearchState()) {
    on<_Started>(_onStarted);
    on<_AddressChanged>(_onAddressChanged);
    on<_DateRangeChanged>(_onDateRangeChanged);
  }

  final MapsRepository mapsRepository;
  final CarRepository carRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarSearchState> emit,
  ) async {
    final currentDate = DateTime.now();

    final defaultStartDate = DateTime(
      currentDate.year,
      currentDate.month,
      currentDate.day,
      currentDate.hour + 2,
      currentDate.minute,
      0,
      0,
      0,
    );

    emit(
      state.copyWith(
        startDate: defaultStartDate,
        endDate: defaultStartDate.add(const Duration(days: 1)),
      ),
    );

    final carsResult = await carRepository.carSearch(
      pageNumber: 1,
      pageSize: 10,
    );

    if (carsResult is ApiSuccess) {
      final cars = (carsResult as ApiSuccess<PaginationResult<Car>>).value.data;

      emit(
        state.copyWith(
          cars: cars,
        ),
      );
    }

    final position = await determineCurrentPosition();

    emit(
      state.copyWith(
        startDate: event.startDate ?? defaultStartDate,
        endDate: event.endDate ?? defaultStartDate.add(const Duration(days: 1)),
        longitude: event.longitude ?? position?.longitude,
        latitude: event.latitude ?? position?.latitude,
      ),
    );

    if (position != null) {
      final locateResult = await mapsRepository.coordinateToAddress(
        lng: position.longitude,
        lat: position.latitude,
      );

      if (locateResult is ApiSuccess) {
        final locate = (locateResult as ApiSuccess<Place>).value;

        emit(
          state.copyWith(
            address: locate.formattedAddress,
            longitude: position.longitude,
            latitude: position.latitude,
          ),
        );
      }
    }
  }

  FutureOr<void> _onAddressChanged(
    _AddressChanged event,
    Emitter<CarSearchState> emit,
  ) {
    emit(
      state.copyWith(
        address: event.address,
        longitude: event.longitude,
        latitude: event.latitude,
      ),
    );
  }

  FutureOr<void> _onDateRangeChanged(
    _DateRangeChanged event,
    Emitter<CarSearchState> emit,
  ) {
    emit(
      state.copyWith(
        startDate: event.startDate,
        endDate: event.endDate,
      ),
    );
  }

  // Future<Placemark> getAddressFromLatLng({
  //   required double longitude,
  //   required double latitude,
  // }) async {
  //   final placemarks = await placemarkFromCoordinates(
  //     latitude,
  //     longitude,
  //     localeIdentifier: 'vi',
  //   );
  //   final placemark = placemarks.first;
  //   return placemark;
  // }
  //
  // Future<String?> currentLocation({
  //   required double longitude,
  //   required double latitude,
  // }) async {
  //   final placemark = await getAddressFromLatLng(
  //     longitude: longitude,
  //     latitude: latitude,
  //   );
  //   // ignore: lines_longer_than_80_chars
  //   return '${placemark.street}, ${placemark.subAdministrativeArea}, ${placemark.administrativeArea}';
  // }
}
