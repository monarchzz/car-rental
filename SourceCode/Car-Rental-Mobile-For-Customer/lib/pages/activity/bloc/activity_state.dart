part of 'activity_bloc.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.initial() = _Initial;
  const factory ActivityState.loading() = _Loading;
  const factory ActivityState.success({
    required List<Order> orders,
    OrderStatus? orderStatus,
  }) = _Success;
  const factory ActivityState.failure({required String message}) = _Failure;
}
