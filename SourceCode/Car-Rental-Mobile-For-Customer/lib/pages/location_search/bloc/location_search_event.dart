part of 'location_search_bloc.dart';

@freezed
class LocationSearchEvent with _$LocationSearchEvent {
  const factory LocationSearchEvent.locationChanged(
    String location,
    BuildContext context,
  ) = _LocationChanged;
  const factory LocationSearchEvent.currentLocationSelected(
      BuildContext context) = _CurrentLocationSelected;
  const factory LocationSearchEvent.myAddressSelected(BuildContext context) =
      _MyAddressSelected;
  const factory LocationSearchEvent.addressSearched(
    String query,
  ) = _AddressSearched;
  const factory LocationSearchEvent.addressSelected(
    Place place,
    BuildContext context,
  ) = _AddressSelected;
}
