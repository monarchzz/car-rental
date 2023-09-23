import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_information_event.dart';
part 'order_information_state.dart';
part 'order_information_bloc.freezed.dart';

class OrderInformationBloc
    extends Bloc<OrderInformationEvent, OrderInformationState> {
  OrderInformationBloc({
    required this.orderRepository,
  }) : super(const OrderInformationState.initial()) {
    on<_Started>(_onStarted);
    on<_OrderStatusChanged>(_onOrderStatusChanged);
    on<_CancelOrder>(_onCancelOrder);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<OrderInformationState> emit,
  ) async {
    emit(const OrderInformationState.loading());

    if (event.orderId == null) {
      emit(const OrderInformationState.failure(message: 'Order id is null'));
      return;
    }

    final orderResult =
        await orderRepository.getOrderById(id: event.orderId ?? '');
    if (orderResult is ApiError) {
      emit(OrderInformationState.failure(
          message: (orderResult as ApiError).error ?? ''));
      return;
    }

    final order = (orderResult as ApiSuccess<Order>).value;

    if (order.orderDetails.isNotEmpty &&
        order.orderDetails.first.driver != null) {
      final driver = order.orderDetails.first.driver;
      emit(
        OrderInformationState.success(
          order: order,
          driver: driver,
        ),
      );
      return;
    }

    emit(
      OrderInformationState.success(order: order),
    );
  }

  FutureOr<void> _onOrderStatusChanged(
    _OrderStatusChanged event,
    Emitter<OrderInformationState> emit,
  ) async {
    LoadingDialogService.load();

    final orderResult = await orderRepository.updateOrderStatus(
      id: event.orderId,
      status: event.status,
    );

    LoadingDialogService.dispose();

    if (orderResult == false && event.status != OrderStatus.paid) {
      showMessageDialog(title: 'Lỗi', message: 'Cập nhật trạng thái thất bại');
    }

    if (orderResult == false && event.status == OrderStatus.paid) {
      showMessageDialog(
        title: 'Lỗi',
        message: 'Bạn không đủ tiền để thanh toán',
      );
    }

    add(_Started(orderId: event.orderId));
  }

  FutureOr<void> _onCancelOrder(
    _CancelOrder event,
    Emitter<OrderInformationState> emit,
  ) async {
    if (state is! _Success) return;

    final currentState = state as _Success;

    LoadingDialogService.load();

    final orderResult = await orderRepository.updateOrderStatus(
      id: event.orderId,
      status: OrderStatus.canceled,
      description: event.reason,
    );

    LoadingDialogService.dispose();

    if (orderResult == false) {
      showMessageDialog(title: 'Lỗi', message: 'Cập nhật trạng thái thất bại');
    }

    add(_Started(orderId: currentState.order.id));
  }
}
