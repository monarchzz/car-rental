import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_customer/models/enums/feedback_type.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.order,
    required this.onTap,
    required this.customerId,
  }) : super(key: key);

  final Order order;
  final String customerId;
  final Function(Order) onTap;

  @override
  Widget build(BuildContext context) {
    final allowReview = order.orderDetails.isNotEmpty &&
        order.orderDetails.first.car.feedBacks?.any(
              (element) => element.orderId == order.id,
            ) ==
            false &&
        (order.status == OrderStatus.returnedTheCar ||
            order.status == OrderStatus.finished);

    final car =
        order.orderDetails.isNotEmpty ? order.orderDetails.first.car : null;

    return Container(
        margin: const EdgeInsets.only(bottom: s08),
        width: double.infinity,
        child: Card(
          child: InkWell(
            onTap: () => onTap(order),
            child: Padding(
              padding: const EdgeInsets.all(s08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        order.orderDetails.isNotEmpty
                            ? order.orderDetails.first.car.name ?? ''
                            : '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      // CarCardTag(
                      //   text: order.orderDetails.isNotEmpty
                      //       ? order.orderDetails.first.car.rentalCarType
                      //           .getDisplayName()
                      //       : '',
                      // ),
                    ],
                  ),
                  const SizedBox(height: s08),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: car?.imageUrl != null
                            ? CachedNetworkImage(
                                height: 80,
                                width: 100,
                                fit: BoxFit.fitWidth,
                                imageUrl: car!.imageUrl!,
                                errorWidget: (context, url, error) {
                                  return const Icon(Icons.error);
                                })
                            : const Image(
                                height: 80,
                                width: 100,
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                  Images.carExample,
                                ),
                              ),
                      ),
                      const SizedBox(width: s08),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bắt đầu: ${DateFormat('HH:mm dd/MM/yyyy').format(
                              order.orderDetails.isNotEmpty
                                  ? order.orderDetails.first.startTime
                                  : DateTime.now(),
                            )}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: s04),
                          Text(
                            'Kết thúc: ${DateFormat('HH:mm dd/MM/yyyy').format(
                              order.orderDetails.isNotEmpty
                                  ? order.orderDetails.first.endTime
                                  : DateTime.now(),
                            )}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: s04),
                          Text(
                            'Tổng tiền: ${formatCurrency(order.amount)}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: s04),
                          Text(
                            'Loại thuê: ${order.hasDriverDisplay}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),

                  // order status
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: order.status.displayColor,
                        ),
                      ),
                      const SizedBox(width: s04),
                      Expanded(
                        child: Text(
                          order.status.displayName,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      if (allowReview)
                        InkWell(
                          onTap: () {
                            context.pushNamed(RouteName.feedback, queryParams: {
                              'order-id': order.id,
                              'driver-id': order.orderDetails.isNotEmpty
                                  ? order.orderDetails.first.driver?.id
                                  : '',
                              'car-id': order.orderDetails.isNotEmpty
                                  ? order.orderDetails.first.car.id
                                  : '',
                              'customer-id': customerId,
                              'feedback-type': FeedbackType.car.name,
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: s04),
                            child: Text(
                              'Đánh giá',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
