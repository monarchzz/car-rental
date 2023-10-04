import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/bloc/car_booking_confirmation_bloc.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/views/car_booking_confirmation_view.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:car_rental_for_customer/repositories/promotion_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarBookingConfirmationPage extends StatelessWidget {
  const CarBookingConfirmationPage({
    Key? key,
    this.carId,
    this.address,
    this.startDate,
    this.endDate,
    this.latitude,
    this.longitude,
    this.promotionId,
    this.carDeliveryCost,
    required this.hasDriver,
  }) : super(key: key);

  final String? carId;
  final String? address;
  final DateTime? startDate;
  final DateTime? endDate;
  final double? latitude;
  final double? longitude;
  final String? promotionId;
  final double? carDeliveryCost;
  final bool hasDriver;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarBookingConfirmationBloc(
        carRepository: getIt.get<CarRepository>(),
        promotionRepository: getIt.get<PromotionRepository>(),
        mapsRepository: getIt.get<MapsRepository>(),
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          CarBookingConfirmationEvent.started(
            carId: carId,
            address: address,
            startDate: startDate,
            endDate: endDate,
            latitude: latitude,
            longitude: longitude,
            promotionId: promotionId,
            carDeliveryCost: carDeliveryCost,
            hasDriver: hasDriver,
          ),
        ),
      child: const CarBookingConfirmationView(),
    );
  }
}
