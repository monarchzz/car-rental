part of 'feedback_bloc.dart';

@freezed
class FeedbackEvent with _$FeedbackEvent {
  const factory FeedbackEvent.started({
    String? orderId,
    String? carId,
    String? driverId,
    String? customerId,
    required FeedbackType feedbackType,
  }) = _Started;

  const factory FeedbackEvent.carFeedbackChanged({
    required FeedbackModel carFeedback,
  }) = _CarFeedbackChanged;

  const factory FeedbackEvent.driverFeedbackChanged({
    required FeedbackModel driverFeedback,
  }) = _DriverFeedbackChanged;
}
