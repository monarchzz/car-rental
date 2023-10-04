import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/debouncer.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:car_rental_for_customer/pages/location_search/position_result.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_search_bloc.freezed.dart';
part 'location_search_event.dart';
part 'location_search_state.dart';

class LocationSearchBloc
    extends Bloc<LocationSearchEvent, LocationSearchState> {
  LocationSearchBloc({
    required this.submit,
    required this.userRepository,
    required this.mapsRepository,
  }) : super(const LocationSearchState(places: [])) {
    on<_LocationChanged>(_onLocationChanged);
    on<_CurrentLocationSelected>(_onCurrentLocationSelected);
    on<_MyAddressSelected>(_onMyAddressSelected);
    on<_AddressSearched>(_onAddressSearched);
    on<_AddressSelected>(_onAddressSelected);
  }

  final UserRepository userRepository;
  final MapsRepository mapsRepository;

  final Debouncer debouncer = Debouncer(milliseconds: 500);

  final void Function(BuildContext context, PositionResult positionResult)
      submit;

  FutureOr<void> _onLocationChanged(
    _LocationChanged event,
    Emitter<LocationSearchState> emit,
  ) {
    if (event.location.isNotEmpty) {
      debouncer.run(() {
        add(LocationSearchEvent.addressSearched(event.location));
      });
    }

    emit(state.copyWith(query: event.location));
  }

  FutureOr<void> _onCurrentLocationSelected(
    _CurrentLocationSelected event,
    Emitter<LocationSearchState> emit,
  ) async {
    LoadingDialogService.load();
    final position = await determineCurrentPosition();

    if (position != null) {
      final placeResult = await mapsRepository.coordinateToAddress(
        lat: position.latitude,
        lng: position.longitude,
      );

      if (placeResult is ApiSuccess) {
        final place = (placeResult as ApiSuccess<Place?>).value;
        if (place != null) {
          // ignore: use_build_context_synchronously
          submit(
            event.context,
            PositionResult(
              lat: place.geometry.location.lat,
              lng: place.geometry.location.lng,
              address: place.formattedAddress,
            ),
          );
        }
      }
    }

    LoadingDialogService.dispose();
  }

  FutureOr<void> _onMyAddressSelected(
    _MyAddressSelected event,
    Emitter<LocationSearchState> emit,
  ) async {
    LoadingDialogService.load();

    final user = await userRepository.getProfile();

    if (user != null) {
      final placeResult =
          await mapsRepository.addressToCoordinate(address: user.address ?? '');

      if (placeResult is ApiSuccess) {
        final place = (placeResult as ApiSuccess<Place?>).value;
        if (place != null) {
          // ignore: use_build_context_synchronously
          submit(
            event.context,
            PositionResult(
              lat: place.geometry.location.lat,
              lng: place.geometry.location.lng,
              address: user.address!,
            ),
          );
        }
      }
    }

    LoadingDialogService.dispose();
  }

  FutureOr<void> _onAddressSearched(
    _AddressSearched event,
    Emitter<LocationSearchState> emit,
  ) async {
    final result = await mapsRepository.addressSearch(event.query);

    if (result is ApiSuccess) {
      final places = (result as ApiSuccess<List<Place>>).value;
      emit(state.copyWith(places: places));
    }
  }

  FutureOr<void> _onAddressSelected(
    _AddressSelected event,
    Emitter<LocationSearchState> emit,
  ) {
    submit(
      event.context,
      PositionResult(
        lng: event.place.geometry.location.lng,
        lat: event.place.geometry.location.lat,
        address: event.place.formattedAddress,
      ),
    );
  }
}
