part of 'car_booking_confirmation_bloc.dart';

@freezed
class CarBookingConfirmationEvent with _$CarBookingConfirmationEvent {
  const factory CarBookingConfirmationEvent.started({
    String? carId,
    String? address,
    DateTime? startDate,
    DateTime? endDate,
    double? latitude,
    double? longitude,
    String? promotionId,
    double? carDeliveryCost,
    required bool hasDriver,
  }) = _Started;

  const factory CarBookingConfirmationEvent.orderCreated({
    required OrderCreateModel orderCreateModel,
  }) = _OrderCreated;
}
