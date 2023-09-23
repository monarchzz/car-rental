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
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/order_detail.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/bloc/car_booking_confirmation_bloc.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/widgets/table_item.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/models/order_create_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarBookingConfirmationView extends StatefulWidget {
  const CarBookingConfirmationView({Key? key}) : super(key: key);

  @override
  State<CarBookingConfirmationView> createState() =>
      _CarBookingConfirmationViewState();
}

class _CarBookingConfirmationViewState
    extends State<CarBookingConfirmationView> {
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarBookingConfirmationBloc, CarBookingConfirmationState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final days = calculateDays(
          successState.startDate,
          successState.endDate,
        );

        final overNightCostUnit = successState.hasDriver ? 300000 : 0;

        final driverCostUnit = successState.hasDriver ? 200000 : 0;
        final overNightCost =
            successState.hasDriver ? (overNightCostUnit * (days - 1)) : 0;

        final rentCost = days * (successState.car.price + driverCostUnit);

        final carDeliveryCost = successState.deliveryDistance * 20000;

        final promotionCost =
            rentCost * ((successState.promotion?.discount ?? 0) / 100);

        final totalCost =
            rentCost + overNightCost + carDeliveryCost - promotionCost;
        final deposit = totalCost * 0.3;
        final remaining = totalCost - deposit;

        return Scaffold(
          appBar: appAppBar(context, titleText: 'Xác nhận đặt xe'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                carImage(context, successState.car),
                carTitle(context, successState.car),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Loại thuê xe',
                    child: Column(
                      children: [
                        Text(
                          successState.hasDriver
                              ? 'Thuê xe có tài xế'
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
                                    successState.startDate,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState.endDate,
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
                                    '${formatTimeOfDay(successState.car.receiveStartTime)}-${formatTimeOfDay(successState.car.receiveEndTime)}',
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
                                    '${formatTimeOfDay(successState.car.returnStartTime)}-${formatTimeOfDay(successState.car.returnEndTime)}',
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
                              child: Text(
                                successState.address,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GoogleMapWidget(
                          longitude: successState.longitude,
                          latitude: successState.latitude,
                        ),
                      ],
                    ),
                  ),
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
                          '${successState.car.additionalCharge.maximumDistance} km/ngày',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: s04,
                        ),
                        Text(
                          'Phí: ${formatCurrency(successState.car.additionalCharge.distanceSurcharge)}/km vượt qua giới hạn',
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
                divider,
                if (successState.car.carOwner != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Chủ xe',
                      child: CarOwnerWidget(
                        car: successState.car,
                        onTap: () {
                          context.pushNamed(
                            RouteName.carOwnerDetail,
                            queryParams: {
                              'car-owner-id': successState.car.carOwner!.id,
                            },
                          );
                        },
                      ),
                    ),
                  ),
                divider,
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: s16),
                //   child: ContainerWithLabel(
                //     label: 'Lời nhắn đến chủ xe',
                //     child: TextField(
                //       controller: textarea,
                //       keyboardType: TextInputType.multiline,
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
                              '${formatCurrency(successState.car.price)}/ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (successState.hasDriver)
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
                        if (successState.hasDriver)
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
                              '${formatCurrency(successState.car.price + driverCostUnit)} x ${calculateDays(
                                successState.startDate,
                                successState.endDate,
                              )} ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (successState.hasDriver)
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
                                  formatCurrency(carDeliveryCost),
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
                                    formatCurrency(deposit),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                              )
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
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(s08),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: s12),
                          ),
                          onPressed: () {
                            context.read<CarBookingConfirmationBloc>().add(
                                  CarBookingConfirmationEvent.orderCreated(
                                    orderCreateModel: OrderCreateModel(
                                      rentalTime: 1,
                                      promotionId: successState.promotion?.id,
                                      isPaid: true,
                                      unitPrice: successState.car.price,
                                      deliveryFee: carDeliveryCost,
                                      deliveryDistance:
                                          successState.deliveryDistance,
                                      deposit: deposit,
                                      amount: totalCost,
                                      // description: textarea.text,
                                      description: null,
                                      orderDetails: [
                                        OrderDetailsCreateModel(
                                          carId: successState.car.id,
                                          hasDriver: successState.hasDriver,
                                          deliveryTime: successState.startDate,
                                          pickUpTime: successState.startDate,
                                          startTime: successState.startDate,
                                          endTime: successState.endDate,
                                          deliveryLocation:
                                              DeliveryLocationCreateModel(
                                            longitude: successState.longitude,
                                            latitude: successState.latitude,
                                          ),
                                          pickUpLocation:
                                              DeliveryLocationCreateModel(
                                            longitude: successState
                                                .car.location.longitude,
                                            latitude: successState
                                                .car.location.latitude,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                          },
                          child: const Text(
                            'Xác nhận thanh toán',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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

  Padding carTitle(BuildContext context, Car car) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                car.name ?? '',
                style: boldTextStyle(size: 18),
              ),
            ],
          ),
          Row(
            children: [
              Text(car.licensePlate,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.dimGray,
                  )),
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
