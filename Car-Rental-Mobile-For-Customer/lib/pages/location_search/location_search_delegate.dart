import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/location_search/bloc/location_search_bloc.dart';
import 'package:car_rental_for_customer/pages/location_search/position_result.dart';
import 'package:car_rental_for_customer/pages/location_search/search_result.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class LocationSearchDelegate extends SearchDelegate<PositionResult?> {
  LocationSearchDelegate() {
    bloc = LocationSearchBloc(
      submit: onSubmit,
      userRepository: getIt.get<UserRepository>(),
      mapsRepository: getIt.get<MapsRepository>(),
    );
  }
  late final LocationSearchBloc bloc;

  void onSubmit(BuildContext context, PositionResult positionResult) {
    close(context, positionResult);
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  String? get searchFieldLabel => 'Nhập địa chỉ';

  @override
  TextStyle? get searchFieldStyle => const TextStyle(fontSize: 16);

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: context.iconColor),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    bloc.add(LocationSearchEvent.locationChanged(query, context));

    return BlocProvider.value(
      value: bloc,
      child: const SearchResult(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    bloc.add(LocationSearchEvent.locationChanged(query, context));

    return BlocProvider.value(
      value: bloc,
      child: const SearchResult(),
    );
  }
}
