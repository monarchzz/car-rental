part of 'car_search_result_bloc.dart';

@freezed
class CarSearchResultState with _$CarSearchResultState {
  const factory CarSearchResultState.initial() = _Initial;
  const factory CarSearchResultState.loading() = _Loading;
  const factory CarSearchResultState.success({
    required String address,
    required DateTime startDate,
    required DateTime endDate,
    required double latitude,
    required double longitude,
    ScrollPagination<Car>? scrollPagination,
    required CarSearchFilter carSearchFilter,
    required List<ProductionCompany> allProductionCompanies,
  }) = _Success;
  const factory CarSearchResultState.failure({String? message}) = _Failure;
}
