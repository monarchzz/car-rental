part of 'car_booking_confirmation_bloc.dart';

@freezed
class CarBookingConfirmationState with _$CarBookingConfirmationState {
  const factory CarBookingConfirmationState.initial() = _Initial;

  const factory CarBookingConfirmationState.loading() = _Loading;

  const factory CarBookingConfirmationState.success({
    required Car car,
    required String address,
    required DateTime startDate,
    required DateTime endDate,
    required double latitude,
    required double longitude,
    Promotion? promotion,
    required double deliveryDistance,
    required bool hasDriver,
  }) = _Success;

  const factory CarBookingConfirmationState.failure({String? message}) =
      _Failure;
}
