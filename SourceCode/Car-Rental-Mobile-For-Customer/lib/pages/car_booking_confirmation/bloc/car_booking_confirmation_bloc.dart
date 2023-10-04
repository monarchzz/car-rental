import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/app/route/app_route.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/models/order_create_model.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:car_rental_for_customer/repositories/promotion_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_booking_confirmation_event.dart';

part 'car_booking_confirmation_state.dart';

part 'car_booking_confirmation_bloc.freezed.dart';

class CarBookingConfirmationBloc
    extends Bloc<CarBookingConfirmationEvent, CarBookingConfirmationState> {
  CarBookingConfirmationBloc({
    required this.carRepository,
    required this.promotionRepository,
    required this.mapsRepository,
    required this.orderRepository,
  }) : super(const CarBookingConfirmationState.initial()) {
    on<_Started>(_onStarted);
    on<_OrderCreated>(_onOrderCreated);
  }

  final CarRepository carRepository;
  final PromotionRepository promotionRepository;
  final MapsRepository mapsRepository;
  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarBookingConfirmationState> emit,
  ) async {
    emit(const CarBookingConfirmationState.loading());

    if (event.carId == null ||
        event.carId!.isEmpty ||
        event.address == null ||
        event.address!.isEmpty ||
        event.startDate == null ||
        event.endDate == null ||
        event.latitude == null ||
        event.longitude == null) {
      emit(const CarBookingConfirmationState.failure(message: 'Missing data'));
      return;
    }

    final carResult = await carRepository.carById(event.carId!);

    if (carResult is ApiSuccess) {
      final car = (carResult as ApiSuccess<Car>).value;
      Promotion? promotion;

      if (event.promotionId != null && event.promotionId?.isNotEmpty == true) {
        final promotionResult =
            await promotionRepository.promotionById(event.promotionId!);

        if (promotionResult is ApiSuccess) {
          promotion = (promotionResult as ApiSuccess<Promotion>).value;
        }
      }

      emit(CarBookingConfirmationState.success(
        car: car,
        address: event.address!,
        startDate: event.startDate!,
        endDate: event.endDate!,
        latitude: event.latitude!,
        longitude: event.longitude!,
        promotion: promotion,
        deliveryDistance: await getCarDeliveryDistance(
          car,
          event.latitude!,
          event.longitude!,
        ),
        hasDriver: event.hasDriver,
      ));
    }
  }

  Future<double> getCarDeliveryDistance(
    Car car,
    double latitude,
    double longitude,
  ) async {
    final distanceResult = await mapsRepository.getDistance(
      lat1: car.location.latitude,
      lng1: car.location.longitude,
      lat2: latitude,
      lng2: longitude,
    );

    return distanceResult ?? 0;
  }

  FutureOr<void> _onOrderCreated(
    _OrderCreated event,
    Emitter<CarBookingConfirmationState> emit,
  ) async {
    LoadingDialogService.load();

    final result = await orderRepository.createOrder(event.orderCreateModel);

    LoadingDialogService.dispose();
    if (result is ApiError) {
      String message = (result as ApiError).error ?? '';
      showMessageDialog(
        title: 'Lỗi',
        message: message,
      );
      return;
    }

    final orderId = (result as ApiSuccess<String>).value;

    getIt.get<AppRoute>().router.goNamed(
      RouteName.orderInformation,
      queryParams: {
        'order-id': orderId,
      },
    );
  }
}
