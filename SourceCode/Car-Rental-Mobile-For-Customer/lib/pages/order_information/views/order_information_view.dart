import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/car_owner_widget.dart';
import 'package:car_rental_for_customer/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_customer/commons/widgets/google_map_widget.dart';
import 'package:car_rental_for_customer/commons/widgets/location_text.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/widgets/table_item.dart';
import 'package:car_rental_for_customer/pages/order_information/bloc/order_information_bloc.dart';
import 'package:car_rental_for_customer/pages/order_information/widgets/driver_widget.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderInformationView extends StatefulWidget {
  const OrderInformationView({Key? key}) : super(key: key);

  @override
  State<OrderInformationView> createState() => _OrderInformationViewState();
}

class _OrderInformationViewState extends State<OrderInformationView> {
  PageController pageController = PageController(viewportFraction: 1);
  // TextEditingController textarea = TextEditingController();

  @override
  void dispose() {
    pageController.dispose();
    // textarea.dispose();
    super.dispose();
  }

  Widget divider = Column(
    children: const [
      SizedBox(
        height: s08,
      ),
      Divider(
        color: CustomColors.gainsboro,
        thickness: 3,
      ),
      SizedBox(
        height: s04,
      ),
    ],
  );

  // List<Step> steps(OrderStatus orderStatus) {
  //   if (orderStatus == OrderStatus.cancelled) {
  //     return [
  //       Step(
  //         state: StepState.error,
  //         title: Text(
  //           OrderStatus.cancelled.displayName,
  //           style: boldTextStyle(
  //             color: OrderStatus.cancelled.displayColor,
  //             size: 13,
  //           ),
  //         ),
  //         isActive: orderStatus.step >= OrderStatus.cancelled.step,
  //         content: const SizedBox(),
  //       ),
  //     ];
  //   }

  //   return [
  //     Step(
  //       state: orderStatus == OrderStatus.pending
  //           ? StepState.complete
  //           : StepState.indexed,
  //       title: Text(
  //         OrderStatus.pending.displayName,
  //         style: boldTextStyle(
  //           color: OrderStatus.pending.displayColor,
  //           size: 13,
  //         ),
  //       ),
  //       isActive: orderStatus.step >= OrderStatus.pending.step,
  //       content: const SizedBox(),
  //     ),
  //     if (orderStatus == OrderStatus.rejected)
  //       Step(
  //         state: orderStatus == OrderStatus.rejected
  //             ? StepState.error
  //             : StepState.indexed,
  //         title: Text(
  //           OrderStatus.rejected.displayName,
  //           style: boldTextStyle(
  //             color: OrderStatus.rejected.displayColor,
  //             size: 13,
  //           ),
  //         ),
  //         isActive: orderStatus.step >= OrderStatus.rejected.step,
  //         content: const SizedBox(),
  //       ),
  //     if (orderStatus != OrderStatus.rejected)
  //       Step(
  //         state: orderStatus == OrderStatus.accepted
  //             ? StepState.complete
  //             : StepState.indexed,
  //         title: Text(
  //           OrderStatus.accepted.displayName,
  //           style: boldTextStyle(
  //             color: OrderStatus.accepted.displayColor,
  //             size: 13,
  //           ),
  //         ),
  //         isActive: orderStatus.step >= OrderStatus.accepted.step,
  //         content: const SizedBox(),
  //       ),
  //     if (orderStatus != OrderStatus.rejected)
  //       Step(
  //         state: orderStatus == OrderStatus.started
  //             ? StepState.complete
  //             : StepState.indexed,
  //         title: Text(
  //           OrderStatus.started.displayName,
  //           style: boldTextStyle(
  //             color: OrderStatus.started.displayColor,
  //             size: 13,
  //           ),
  //         ),
  //         isActive: orderStatus.step >= OrderStatus.started.step,
  //         content: const SizedBox(),
  //       ),
  //     if (orderStatus != OrderStatus.rejected)
  //       Step(
  //         state: orderStatus == OrderStatus.finished
  //             ? StepState.complete
  //             : StepState.indexed,
  //         title: Text(
  //           OrderStatus.finished.displayName,
  //           style: boldTextStyle(
  //             color: OrderStatus.finished.displayColor,
  //             size: 13,
  //           ),
  //         ),
  //         isActive: orderStatus.step >= OrderStatus.finished.step,
  //         content: const SizedBox(),
  //       ),
  //   ];
  //   {}
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderInformationBloc, OrderInformationState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        if (successState.order.orderDetails.isEmpty) {
          return const Scaffold(
            body: Center(
              child: Text('Không có thông tin chuyến'),
            ),
          );
        }

        var hasDriver = false;
        if (successState.order.orderDetails.isNotEmpty &&
            successState.order.orderDetails.first.driver != null) {
          hasDriver = true;
        }

        final days = calculateDays(
          successState.order.orderDetails.first.startTime,
          successState.order.orderDetails.first.endTime,
        );

        final overNightCostUnit = hasDriver ? 300000 : 0;

        final driverCostUnit = hasDriver ? 200000 : 0;
        final overNightCost = hasDriver ? (overNightCostUnit * (days - 1)) : 0;

        final rentCost = days * (successState.order.unitPrice + driverCostUnit);

        final promotionCost =
            rentCost * ((successState.order.promotion?.discount ?? 0) / 100);

        final carDeliveryCost = successState.order.deliveryFee;

        // final totalCost = rentCost + overNightCost + carDeliveryCost - promotionCost;
        final totalCost = successState.order.amount;
        final deposit = successState.order.deposit;
        final remaining = totalCost - deposit;

        // final remaining =
        //     successState.order.amount - successState.order.deposit;
        return Scaffold(
          appBar: appAppBar(context, titleText: 'Thông tin chuyến'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                carImage(context, successState.order.orderDetails.first.car),
                carTitle(context, successState.order.orderDetails.first.car),
                divider,
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: s16),
                //   child: ContainerWithLabel(
                //     label: 'Trạng thái chuyến',
                //     child: Stepper(
                //       controlsBuilder: (context, details) {
                //         return Row(
                //           children: const [
                //             SizedBox(),
                //           ],
                //         );
                //       },
                //       steps: steps(successState.order.status),
                //       physics: const BouncingScrollPhysics(),
                //       type: StepperType.vertical,
                //       currentStep: successState.order.status.step,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Trạng thái',
                    child: Row(
                      children: [
                        Text(
                          successState.order.status.displayName,
                          style: TextStyle(
                            fontSize: 16,
                            color: successState.order.status.displayColor,
                          ),
                        ),
                        const SizedBox(
                          width: s32,
                        ),
                        if (successState.order.status == OrderStatus.canceled &&
                            successState.order.description != null &&
                            successState.order.description!.isNotEmpty) ...[
                          const SizedBox(
                            width: s32,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lý do: ${successState.order.description!}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        if (successState.order.status ==
                            OrderStatus.carOwnerApproved)
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showConfirmDialogCustom(
                                      context,
                                      onAccept: (c) async {
                                        context
                                            .read<OrderInformationBloc>()
                                            .add(
                                              OrderInformationEvent
                                                  .orderStatusChanged(
                                                orderId: successState.order.id,
                                                status: OrderStatus.paid,
                                              ),
                                            );
                                      },
                                      dialogType: DialogType.CONFIRMATION,
                                      customCenterWidget: const Center(
                                        child: Icon(
                                          Icons.check_circle,
                                          color: CustomColors.flamingo,
                                          size: 100,
                                        ),
                                      ),
                                      primaryColor: CustomColors.flamingo,
                                      title:
                                          'Bạn muốn thanh toán cho đơn hàng?',
                                      negativeText: 'Hủy',
                                      positiveText: 'Đồng ý',
                                    );
                                  },
                                  child: const Text('Thanh toán'),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Loại thuê xe',
                    child: Column(
                      children: [
                        Text(
                          successState.order.orderDetails.isNotEmpty
                              ? successState.order.orderDetails.first.driver !=
                                      null
                                  ? 'Thuê xe có tài xế'
                                  : 'Thuê xe tự lái'
                              : 'Thuê xe tự lái',
                        )
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Thời gian',
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                            ),
                            const SizedBox(
                              width: s08,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState
                                        .order.orderDetails.first.startTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState
                                        .order.orderDetails.first.endTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: s08,
                            vertical: s04,
                          ),
                          color: CustomColors.ochre.withOpacity(0.1),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Thời gian nhận xe',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatTimeOfDay(successState.order.orderDetails.first.car.receiveStartTime)}-${formatTimeOfDay(successState.order.orderDetails.first.car.receiveEndTime)}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Thời gian trả xe',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatTimeOfDay(successState.order.orderDetails.first.car.returnStartTime)}-${formatTimeOfDay(successState.order.orderDetails.first.car.returnEndTime)}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Địa điểm giao nhận xe',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            const SizedBox(width: 2),
                            SizedBox(
                              width: context.width() * 0.8,
                              child: LocationText(
                                longitude: successState.order.orderDetails.first
                                        .deliveryLocation?.longitude ??
                                    successState.order.orderDetails.first
                                        .pickUpLocation?.longitude ??
                                    0,
                                latitude: successState.order.orderDetails.first
                                        .deliveryLocation?.latitude ??
                                    successState.order.orderDetails.first
                                        .pickUpLocation?.latitude ??
                                    0,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                              // child: Text(
                              //   successState.order.address,
                              //   style: const TextStyle(
                              //     fontSize: 13,
                              //     fontWeight: FontWeight.w500,
                              //     color: CustomColors.jetBlack,
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                        GoogleMapWidget(
                          latitude: successState.order.orderDetails.first
                                  .deliveryLocation?.latitude ??
                              successState.order.orderDetails.first
                                  .pickUpLocation?.latitude ??
                              0,
                          longitude: successState.order.orderDetails.first
                                  .deliveryLocation?.longitude ??
                              successState.order.orderDetails.first
                                  .pickUpLocation?.longitude ??
                              0,
                        ),
                      ],
                    ),
                  ),
                ),
                if (successState.order.status != OrderStatus.pending &&
                    successState.order.status != OrderStatus.managerConfirmed &&
                    successState.order.status != OrderStatus.carOwnerApproved &&
                    successState.order.status != OrderStatus.canceled)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Thông tin liên hệ chủ xe',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Số điện thoại',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.jetBlack,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    successState.order.orderDetails.first.car
                                            .carOwner?.phone ??
                                        '',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.jetBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                if (successState.driver != null)
                  Column(
                    children: [
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Tài xế',
                          child: DriverWidget(
                            driver: successState.driver!,
                            onTap: (driver) {
                              context.pushNamed(
                                RouteName.driverDetail,
                                queryParams: {
                                  'driver-id': driver.id,
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Giới hạn số KM',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${successState.order.orderDetails.first.car.additionalCharge.maximumDistance} km/ngày',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: s04,
                        ),
                        Text(
                          'Phí: ${formatCurrency(successState.order.orderDetails.first.car.additionalCharge.distanceSurcharge)}/km vượt qua giới hạn',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Giấy tờ thuê xe (bàn gốc)',
                    child: Column(
                      children: const [
                        Text(
                          '◦ CMND/CCCD/Hộ chiếu (đối chiếu)\n◦ Giấy phép lái xe (đối chiếu)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.jetBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Tài sản thế chấp',
                    child: Text(
                      '15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.jetBlack,
                      ),
                    ),
                  ),
                ),
                divider,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Quy định',
                    child: Text(
                      '◦ Sử dụng xe đúng mục đích.\n◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.\n◦ Không sử dụng xe thuê để cầm cố, thế chấp.\n◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.\n◦ Không chở hàng quốc cấm dễ cháy nổ.\n◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.\n◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.\nTrân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.jetBlack,
                      ),
                    ),
                  ),
                ),
                if (successState.order.orderDetails.first.car.carOwner != null)
                  Column(
                    children: [
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Chủ xe',
                          child: CarOwnerWidget(
                            car: successState.order.orderDetails.first.car,
                            onTap: () {
                              context.pushNamed(
                                RouteName.carOwnerDetail,
                                queryParams: {
                                  'car-owner-id': successState.order
                                      .orderDetails.first.car.carOwner!.id,
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                divider,
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: s16),
                //   child: ContainerWithLabel(
                //     label: 'Lời nhắn đến chủ xe',
                //     child: TextField(
                //       controller: textarea,
                //       keyboardType: TextInputType.multiline,
                //       readOnly: true,
                //       maxLines: 4,
                //       decoration: const InputDecoration(
                //         border: OutlineInputBorder(),
                //       ),
                //     ),
                //   ),
                // ),
                // divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Chi tiết giá',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Đơn giá thuê: ',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            Text(
                              '${formatCurrency(successState.order.unitPrice)}/ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (hasDriver)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí cho tài xế: ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(driverCostUnit.toDouble())}/ngày',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        if (hasDriver)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí qua đêm cho tài xế: ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(overNightCostUnit.toDouble())}/đêm',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        const Divider(),
                        Row(
                          children: [
                            const Text(
                              'Phí thuê xe:',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            Text(
                              '${formatCurrency(successState.order.unitPrice + driverCostUnit)} x $days ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (hasDriver)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí qua đêm:',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(overNightCostUnit.toDouble())} x ${days - 1} đêm',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        Column(
                          children: [
                            const SizedBox(
                              height: s04,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Phí giao nhận xe:',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                Text(
                                  formatCurrency(
                                      successState.order.deliveryFee),
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: s04,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Khuyễn mãi:',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            //TODO: add promotion
                            Text(
                              '-${formatCurrency(promotionCost)}',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Text(
                              'Tổng cộng:',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              formatCurrency(totalCost),
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: s08),
                          padding: const EdgeInsets.symmetric(
                            horizontal: s08,
                            vertical: s04,
                          ),
                          color: CustomColors.ochre.withOpacity(0.1),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Tiền cọc',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(successState.order.deposit),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              if (successState.order.status !=
                                  OrderStatus.canceled)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: s02,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Đã thanh toán tiền cọc',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.dimGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: s08,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Thanh toán cho chủ xe khi nhận xe',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(remaining),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.flamingo,
                                    ),
                                  ),
                                ],
                              ),
                              if (successState.order.status == OrderStatus.paid)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: s02,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Đã thanh toán',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.dimGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                cancellationPolicy(),
                const SizedBox(
                  height: s32,
                ),

                if (successState.order.status == OrderStatus.pending ||
                    successState.order.status == OrderStatus.managerConfirmed ||
                    successState.order.status == OrderStatus.carOwnerApproved)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (builderContext) {
                                    return confirmDialog(
                                      context,
                                      successState.order.id,
                                    );
                                  });
                            },
                            child: const Text('Hủy chuyến'),
                          ),
                        ),
                      ],
                    ),
                  ),

                const SizedBox(
                  height: s32,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Padding cancellationPolicy() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: s16),
      child: ContainerWithLabel(
        label: 'Chính sách hủy chuyến',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Table(
            //   border: TableBorder.all(
            //     color: CustomColors.silver,
            //   ),
            //   children: const [
            //     TableRow(
            //       children: [
            //         TableItem(
            //           child: Text(
            //             'Thời gian hủy',
            //             style: TextStyle(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             'Phí hủy',
            //             style: TextStyle(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             'Tiền cọc hoàn trả',
            //             style: TextStyle(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         TableItem(
            //           child: Text(
            //             'Trong vòng 1 giờ sau đặt cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             '0% tiền cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             '100% tiền cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         TableItem(
            //           child: Text(
            //             '> 7 ngày trước ngày đi',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             '30% tiển cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             '70% tiền cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         TableItem(
            //           child: Text(
            //             '<= 7 ngày trước ngày đi',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             '100% tiển cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //         TableItem(
            //           child: Text(
            //             '0% tiển cọc',
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: s08,
            // ),
            // const Text(
            //   'Tiền cọc sẽ được hoàn trả trong vòng 3 ngày làm việc',
            //   style: TextStyle(
            //     fontSize: 12,
            //     color: CustomColors.dimGray,
            //   ),
            // ),
            Text(
              'Tiền cọc sẽ không được hoàn trả nếu bạn huỷ chuyến',
              style: TextStyle(
                fontSize: 14,
                color: CustomColors.tomato,
              ),
            ),
          ],
        ),
      ),
    );
  }

  StatefulBuilder confirmDialog(
    BuildContext rootContext,
    String orderId,
  ) {
    String reason = '';

    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          title: const Text('Xác nhận'),
          content: SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Lý do hủy chuyến:'),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      reason = value;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Hủy'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();

                rootContext.read<OrderInformationBloc>().add(
                      OrderInformationEvent.cancelOrder(
                        orderId: orderId,
                        reason: reason,
                      ),
                    );
              },
              child: const Text('Đồng ý'),
            ),
          ],
        );
      },
    );
  }

  Padding carTitle(BuildContext context, Car car) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: s04,
          ),
          Row(
            children: [
              Text(
                car.name ?? '',
                style: boldTextStyle(size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget carImage(BuildContext context, Car car) {
    if (car.thumbnails == null || car.thumbnails?.isEmpty == true) {
      return Image.asset(
        Images.carExample,
        width: double.infinity,
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
      );
    }
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.65,
          child: PageView.builder(
            controller: pageController,
            itemCount: car.thumbnails!.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(s08),
              alignment: Alignment.center,
              child: CachedNetworkImage(
                  width: double.infinity,
                  imageUrl: car.thumbnails![index].url,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  }),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.62,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: pageController,
              count: car.thumbnails!.length,
              effect: CustomizableEffect(
                spacing: 3,
                activeDotDecoration: DotDecoration(
                  height: 5,
                  width: 5,
                  color: CustomColors.primaryMaterialColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                dotDecoration: DotDecoration(
                  height: 5,
                  width: 5,
                  color: CustomColors.silver,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
