import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_detail/bloc/car_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/car_detail/views/car_detail_view.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailPage extends StatelessWidget {
  const CarDetailPage({
    Key? key,
    required this.carId,
    this.address,
    this.startDate,
    this.endDate,
    this.latitude,
    this.longitude,
  }) : super(key: key);

  final String carId;
  final String? address;
  final DateTime? startDate;
  final DateTime? endDate;
  final double? latitude;
  final double? longitude;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarDetailBloc(
        mapsRepository: getIt.get<MapsRepository>(),
        userRepository: getIt.get<UserRepository>(),
        carRepository: getIt.get<CarRepository>(),
      )..add(
          CarDetailEvent.started(
            carId: carId,
            address: address,
            startDate: startDate,
            endDate: endDate,
            latitude: latitude,
            longitude: longitude,
          ),
        ),
      child: const CarDetailView(),
    );
  }
}
