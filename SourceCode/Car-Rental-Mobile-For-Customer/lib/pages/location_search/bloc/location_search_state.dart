part of 'location_search_bloc.dart';

@freezed
class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState({
    String? query,
    required List<Place> places,
  }) = _LocationSearchState;
}
