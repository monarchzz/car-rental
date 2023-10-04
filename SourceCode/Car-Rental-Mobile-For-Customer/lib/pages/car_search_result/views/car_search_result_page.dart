import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/views/car_search_result_view.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/production_conpany_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarSearchResultPage extends StatelessWidget {
  const CarSearchResultPage({
    Key? key,
    required this.startDate,
    required this.endDate,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.distance,
  }) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;
  final String address;
  final double longitude;
  final double latitude;
  final int? distance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarSearchResultBloc(
        carRepository: getIt.get<CarRepository>(),
        mapsRepository: getIt.get<MapsRepository>(),
        productionCompanyRepository: getIt.get<ProductionCompanyRepository>(),
      )..add(
          CarSearchResultEvent.started(
            address: address,
            startDate: startDate,
            endDate: endDate,
            longitude: longitude,
            latitude: latitude,
            distance: distance,
          ),
        ),
      child: const CarSearchResultView(),
    );
  }
}
