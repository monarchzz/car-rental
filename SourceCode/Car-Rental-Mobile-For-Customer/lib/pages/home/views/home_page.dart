import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/home/bloc/home_bloc.dart';
import 'package:car_rental_for_customer/pages/home/views/home_view.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeBloc(
        userRepository: getIt.get<UserRepository>(),
        carRepository: getIt.get<CarRepository>(),
      )..add(const HomeEvent.started()),
      child: const HomeView(),
    );
  }
}
