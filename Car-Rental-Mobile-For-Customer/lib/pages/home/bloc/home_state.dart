part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({
    required User user,
    required int topDealIndex,
    required List<Car> topDeals,
  }) = _Success;
  const factory HomeState.error(String message) = _Error;
}
