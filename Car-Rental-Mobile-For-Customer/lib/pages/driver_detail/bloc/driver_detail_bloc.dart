import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:car_rental_for_customer/models/feedback.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/repositories/driver_repository.dart';
import 'package:car_rental_for_customer/repositories/feedback_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_detail_event.dart';
part 'driver_detail_state.dart';
part 'driver_detail_bloc.freezed.dart';

class DriverDetailBloc extends Bloc<DriverDetailEvent, DriverDetailState> {
  DriverDetailBloc({
    required this.driverRepository,
    required this.feedbackRepository,
  }) : super(const DriverDetailState.initial()) {
    on<_Started>(_onStarted);
  }

  final DriverRepository driverRepository;
  final FeedbackRepository feedbackRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DriverDetailState> emit,
  ) async {
    emit(const DriverDetailState.loading());

    final driverResult = await driverRepository.driverById(event.driverId);
    if (driverResult is ApiError) {
      emit(DriverDetailState.failure(
          message: (driverResult as ApiError).error ?? ''));
      return;
    }

    final driver = (driverResult as ApiSuccess<Driver>).value;

    emit(DriverDetailState.success(
      driver: driver,
      feedbacks: [],
    ));

    final feedbackResult = await feedbackRepository.feedbacksByDriver(
      driver: event.driverId,
      pageNumber: 1,
      pageSize: 1000,
    );

    if (feedbackResult is ApiSuccess) {
      final feedbacks =
          (feedbackResult as ApiSuccess<PaginationResult<FeedbackModel>>)
              .value
              .data;

      emit(DriverDetailState.success(
        driver: driver,
        feedbacks: feedbacks,
      ));
    }
  }
}
