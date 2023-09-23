part of 'order_information_bloc.dart';

@freezed
class OrderInformationState with _$OrderInformationState {
  const factory OrderInformationState.initial() = _Initial;
  const factory OrderInformationState.loading() = _Loading;
  const factory OrderInformationState.success({
    required Order order,
    Driver? driver,
  }) = _Success;
  const factory OrderInformationState.failure({required String message}) =
      _Failure;
}
