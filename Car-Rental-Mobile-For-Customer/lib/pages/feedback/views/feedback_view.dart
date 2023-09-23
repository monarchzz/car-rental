import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car_feature.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/pages/feedback/bloc/feedback_bloc.dart';
import 'package:car_rental_for_customer/repositories/feedback_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

class FeedbackView extends StatefulWidget {
  const FeedbackView({super.key});

  @override
  State<FeedbackView> createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {
  final carTextController = TextEditingController();
  final driverTextController = TextEditingController();

  @override
  void dispose() {
    carTextController.dispose();
    driverTextController.dispose();
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
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final order = successState.order;
        final carFeedback = successState.carFeedback;
        final driverFeedback = successState.driverFeedback;

        final car =
            order.orderDetails.isNotEmpty ? order.orderDetails.first.car : null;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Đánh giá',
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: s08),
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(s08),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    order.orderDetails.isNotEmpty
                                        ? order.orderDetails.first.car.name ??
                                            ''
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    child: car?.images?.isNotEmpty == true
                                        ? CachedNetworkImage(
                                            height: 80,
                                            width: 100,
                                            fit: BoxFit.fitWidth,
                                            imageUrl: car!.images![0].url,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bắt đầu: ${DateFormat('HH:mm dd/MM/yyyy').format(
                                          order.orderDetails.isNotEmpty
                                              ? order
                                                  .orderDetails.first.startTime
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    divider,
                    ContainerWithLabel(
                      padding: const EdgeInsets.all(s08),
                      label: 'Đánh giá cho xe',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: s08),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                itemSize: 25,
                                initialRating:
                                    carFeedback.star?.toDouble() ?? 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  context.read<FeedbackBloc>().add(
                                        FeedbackEvent.carFeedbackChanged(
                                          carFeedback: carFeedback.copyWith(
                                            star: rating.toInt(),
                                          ),
                                        ),
                                      );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: s08),
                          const Text(
                            'Nhận xét của bạn',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: s08),
                          TextField(
                            controller: carTextController,
                            maxLines: 5,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(s08),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText:
                                  'Hãy chia sẻ cảm nhận, đánh giá của bạn về chuyến đi',
                              hintStyle: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            onChanged: (value) {
                              context.read<FeedbackBloc>().add(
                                    FeedbackEvent.carFeedbackChanged(
                                      carFeedback: carFeedback.copyWith(
                                        content: value,
                                      ),
                                    ),
                                  );
                            },
                          ),
                        ],
                      ),
                    ),
                    if (driverFeedback != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          divider,
                          ContainerWithLabel(
                            padding: const EdgeInsets.all(s08),
                            label: 'Đánh giá cho tài xế',
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: s08),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 25,
                                      initialRating:
                                          driverFeedback.star?.toDouble() ?? 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 1),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        context.read<FeedbackBloc>().add(
                                              FeedbackEvent
                                                  .driverFeedbackChanged(
                                                driverFeedback:
                                                    driverFeedback.copyWith(
                                                  star: rating.toInt(),
                                                ),
                                              ),
                                            );
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: s08),
                                const Text(
                                  'Nhận xét của bạn',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: s08),
                                TextField(
                                  controller: driverTextController,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(s08),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText:
                                        'Hãy chia sẻ cảm nhận, đánh gái của bạn về tài xế',
                                    hintStyle: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    context.read<FeedbackBloc>().add(
                                          FeedbackEvent.driverFeedbackChanged(
                                            driverFeedback:
                                                driverFeedback.copyWith(
                                              content: value,
                                            ),
                                          ),
                                        );
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    const SizedBox(height: s64),
                  ],
                ),
              ),
              Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: s08),
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () async {
                              final feedbackRepo =
                                  getIt.get<FeedbackRepository>();

                              LoadingDialogService.load();

                              final List<bool> result = await Future.wait([
                                feedbackRepo.createFeedbackForCar(
                                  carFeedback,
                                ),
                                driverFeedback != null
                                    ? feedbackRepo.createFeedbackForDriver(
                                        driverFeedback,
                                      )
                                    : Future.value(true),
                              ]);

                              LoadingDialogService.dispose();

                              if (result.any((element) => element == true)) {
                                showMessageDialog(
                                  title: 'Thành công',
                                  message: 'Cảm ơn bạn đã đánh giá',
                                ).then((value) {
                                  context.goNamed(RouteName.activity);
                                });
                              } else {
                                showMessageDialog(
                                  title: 'Thất bại',
                                  message: 'Đã có lỗi xảy ra',
                                );
                              }
                            },
                            child: const Text('Gửi đánh giá'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: s08),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
