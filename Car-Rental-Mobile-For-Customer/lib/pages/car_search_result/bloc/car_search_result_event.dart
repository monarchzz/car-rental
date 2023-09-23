part of 'car_search_result_bloc.dart';

@freezed
class CarSearchResultEvent with _$CarSearchResultEvent {
  const factory CarSearchResultEvent.started({
    required String address,
    required DateTime startDate,
    required DateTime endDate,
    required double longitude,
    required double latitude,
    int? distance,
  }) = _Started;

  const factory CarSearchResultEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;

  const factory CarSearchResultEvent.carTypeFilterChanged({
    CarTypeEnum? carType,
  }) = _CarTypeFilterChanged;

  const factory CarSearchResultEvent.transmissionFilterChanged({
    TransmissionEnum? transmission,
  }) = _TransmissionFilterChanged;

  const factory CarSearchResultEvent.isDiscountedFilterChanged() =
      _IsDiscountedFilterChanged;

  const factory CarSearchResultEvent.productionCompanyFilterChanged({
    ProductionCompany? productionCompany,
  }) = _ProductionCompanyFilterChanged;
}
