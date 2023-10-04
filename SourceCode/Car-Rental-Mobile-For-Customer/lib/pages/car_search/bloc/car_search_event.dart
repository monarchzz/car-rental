part of 'car_search_bloc.dart';

@freezed
class CarSearchEvent with _$CarSearchEvent {
  const factory CarSearchEvent.started({
    double? longitude,
    double? latitude,
    DateTime? startDate,
    DateTime? endDate,
    String? address,
  }) = _Started;

  const factory CarSearchEvent.addressChanged({
    required String address,
    required double longitude,
    required double latitude,
  }) = _AddressChanged;

  const factory CarSearchEvent.dateRangeChanged({
    required DateTime startDate,
    required DateTime endDate,
  }) = _DateRangeChanged;
}
