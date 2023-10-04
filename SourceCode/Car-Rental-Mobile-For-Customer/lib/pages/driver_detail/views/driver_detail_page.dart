import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/driver_detail/bloc/driver_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/driver_detail/views/driver_detail_views.dart';
import 'package:car_rental_for_customer/repositories/driver_repository.dart';
import 'package:car_rental_for_customer/repositories/feedback_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverDetailPage extends StatelessWidget {
  const DriverDetailPage({
    Key? key,
    required this.driverId,
  }) : super(key: key);

  final String driverId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DriverDetailBloc(
        driverRepository: getIt.get<DriverRepository>(),
        feedbackRepository: getIt.get<FeedbackRepository>(),
      )..add(
          DriverDetailEvent.started(
            driverId: driverId,
          ),
        ),
      child: const DriverDetailView(),
    );
  }
}
