import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/order_information/bloc/order_information_bloc.dart';
import 'package:car_rental_for_customer/pages/order_information/views/order_information_view.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderInformationPage extends StatelessWidget {
  const OrderInformationPage({Key? key, this.orderId}) : super(key: key);

  final String? orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: OrderInformationBloc(
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          OrderInformationEvent.started(
            orderId: orderId,
          ),
        ),
      child: const OrderInformationView(),
    );
  }
}
