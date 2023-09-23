import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({
    required this.orderRepository,
  }) : super(const ActivityState.initial()) {
    on<_Started>(_onStarted);
    on<_OrderStatusChanged>(_onOrderStatusChanged);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ActivityState> emit,
  ) async {
    emit(const ActivityState.loading());

    final result = await orderRepository.myOrders(
      pageNumber: 1,
      pageSize: 1000,
    );

    if (result is ApiSuccess) {
      List<Order> orders = [
        ...(result as ApiSuccess<PaginationResult<Order>>).value.data
      ];
      orders.sort(
          (a, b) => b.createAt?.compareTo(a.createAt ?? DateTime.now()) ?? 0);

      emit(
        ActivityState.success(
          orders: orders,
        ),
      );
    } else {
      emit(const ActivityState.success(orders: []));
    }
  }

  FutureOr<void> _onOrderStatusChanged(
    _OrderStatusChanged event,
    Emitter<ActivityState> emit,
  ) async {
    emit(const ActivityState.loading());

    final result = await orderRepository.myOrders(
      pageNumber: 1,
      pageSize: 1000,
      orderStatus: event.orderStatus,
    );

    if (result is ApiSuccess) {
      List<Order> orders = [
        ...(result as ApiSuccess<PaginationResult<Order>>).value.data
      ];

      // if (event.orderStatus != null) {
      //   orders = orders
      //       .where((element) => element.status == event.orderStatus)
      //       .toList();
      // }

      orders.sort(
          (a, b) => b.createAt?.compareTo(a.createAt ?? DateTime.now()) ?? 0);

      emit(
        ActivityState.success(
          orders: orders,
          orderStatus: event.orderStatus,
        ),
      );
    } else {
      emit(const ActivityState.success(orders: []));
    }
  }
}
