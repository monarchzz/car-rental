part of 'car_search_bloc.dart';

@freezed
class CarSearchState with _$CarSearchState {
  const factory CarSearchState({
    String? address,
    DateTime? startDate,
    DateTime? endDate,
    double? longitude,
    double? latitude,
    List<Car>? cars,
  }) = _CarSearchState;
}
