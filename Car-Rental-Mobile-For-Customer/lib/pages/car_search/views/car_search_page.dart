import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search/bloc/car_search_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search/views/car_search_view.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarSearchPage extends StatelessWidget {
  const CarSearchPage({
    Key? key,
    this.longitude,
    this.latitude,
    this.startDate,
    this.endDate,
    this.address,
  }) : super(key: key);

  final double? longitude;
  final double? latitude;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? address;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarSearchBloc(
        mapsRepository: getIt.get<MapsRepository>(),
        carRepository: getIt.get<CarRepository>(),
      )..add(
          CarSearchEvent.started(),
        ),
      child: const CarSearchView(),
    );
  }
}
