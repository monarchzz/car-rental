import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/enums/feedback_type.dart';
import 'package:car_rental_for_customer/pages/feedback/bloc/feedback_bloc.dart';
import 'package:car_rental_for_customer/pages/feedback/views/feedback_view.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({
    super.key,
    this.orderId,
    this.carId,
    this.driverId,
    this.customerId,
    required this.feedbackType,
  });

  final String? orderId;
  final String? carId;
  final String? driverId;
  final String? customerId;
  final FeedbackType feedbackType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: FeedbackBloc(orderRepository: getIt.get<OrderRepository>())
        ..add(
          FeedbackEvent.started(
            orderId: orderId,
            carId: carId,
            driverId: driverId,
            customerId: customerId,
            feedbackType: feedbackType,
          ),
        ),
      child: const FeedbackView(),
    );
  }
}
