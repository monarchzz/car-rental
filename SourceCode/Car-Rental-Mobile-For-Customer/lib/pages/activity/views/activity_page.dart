import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/activity/bloc/activity_bloc.dart';
import 'package:car_rental_for_customer/pages/activity/views/activity_view.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ActivityBloc(
        orderRepository: getIt.get<OrderRepository>(),
      )..add(const ActivityEvent.started()),
      child: const ActivityView(),
    );
  }
}
