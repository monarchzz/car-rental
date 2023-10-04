part of 'driver_detail_bloc.dart';

@freezed
class DriverDetailState with _$DriverDetailState {
  const factory DriverDetailState.initial() = _Initial;
  const factory DriverDetailState.loading() = _Loading;
  const factory DriverDetailState.success({
    required Driver driver,
    required List<FeedbackModel> feedbacks,
  }) = _Success;
  const factory DriverDetailState.failure({required String message}) = _Failure;
}
