import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/feedback_type.dart';
import 'package:car_rental_for_customer/models/feedback.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';
part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc({
    required this.orderRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_CarFeedbackChanged>(_onCarFeedbackChanged);
    on<_DriverFeedbackChanged>(_onDriverFeedbackChanged);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(const _Loading());

    final carFeedback = FeedbackModel(
      id: 'car',
      orderId: event.orderId,
      carId: event.carId,
      driverId: event.driverId,
      customerId: event.customerId,
      star: 0,
      content: null,
      createAt: DateTime.now(),
    );

    FeedbackModel? driverFeedback;

    if (event.driverId != null && event.driverId!.isNotEmpty) {
      driverFeedback = FeedbackModel(
        id: 'driver',
        orderId: event.orderId,
        carId: event.carId,
        driverId: event.driverId,
        customerId: event.customerId,
        star: 0,
        content: null,
        createAt: DateTime.now(),
      );
    }

    final orderResult =
        await orderRepository.getOrderById(id: event.orderId ?? '');
    if (orderResult is ApiError) {
      emit(const _Failure(message: 'Không tìm thấy đơn hàng'));
      return;
    }

    final order = (orderResult as ApiSuccess<Order>).value;

    emit(_Success(
      carFeedback: carFeedback,
      driverFeedback: driverFeedback,
      feedbackType: event.feedbackType,
      order: order,
    ));
  }

  FutureOr<void> _onCarFeedbackChanged(
    _CarFeedbackChanged event,
    Emitter<FeedbackState> emit,
  ) async {
    if (state is! _Success) return;

    final currentState = state as _Success;

    emit(currentState.copyWith(
      carFeedback: event.carFeedback,
    ));
  }

  FutureOr<void> _onDriverFeedbackChanged(
    _DriverFeedbackChanged event,
    Emitter<FeedbackState> emit,
  ) async {
    if (state is! _Success) return;

    final currentState = state as _Success;

    emit(currentState.copyWith(
      driverFeedback: event.driverFeedback,
    ));
  }
}
