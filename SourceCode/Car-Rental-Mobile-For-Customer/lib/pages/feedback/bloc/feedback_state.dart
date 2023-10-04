part of 'feedback_bloc.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = _Initial;
  const factory FeedbackState.loading() = _Loading;
  const factory FeedbackState.success({
    required FeedbackModel carFeedback,
    FeedbackModel? driverFeedback,
    required FeedbackType feedbackType,
    required Order order,
  }) = _Success;
  const factory FeedbackState.failure({
    required String message,
  }) = _Failure;
}
