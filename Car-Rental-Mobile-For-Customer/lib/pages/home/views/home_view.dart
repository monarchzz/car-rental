import 'package:car_rental_for_customer/app/bloc/authentication_bloc.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/home/bloc/home_bloc.dart';
import 'package:car_rental_for_customer/pages/home/widgets/car_option.dart';
import 'package:car_rental_for_customer/pages/home/widgets/location_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> topDeals = [
    'Tất cả',
    'Xe tự lái',
    'Xe có tài xế',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String get welcomeText {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Chào buổi sáng 👋';
    } else if (hour < 18) {
      return 'Chào buổi chiều 👋';
    } else {
      return 'Chào buổi tối 👋';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final isLicenseValid = successState.user.isLicenseValid;

        return Scaffold(
          backgroundColor: CustomColors.white,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 50,
            backgroundColor: CustomColors.appBarColor,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: s02),
                Text(
                  welcomeText,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: s02,
                ),
                Text(
                  successState.user.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            leading: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: s08,
                  right: s08,
                  bottom: s08,
                  left: s16,
                ),
                child: Image.asset(
                  Images.userImage,
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(60),
              ),
              onTap: () {
                context.goNamed(RouteName.profile);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 22,
                ),
                onPressed: () {
                  context.goNamed(RouteName.notification);
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(s08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: s08),
                  // Row(
                  //   children: [
                  //     CarOption(
                  //       carImage: Images.selfDrivingCar,
                  //       text: 'Xe tự lái',
                  //       onTap: () {
                  //         if (isLicenseValid) {
                  //           context.goNamed(RouteName.carSearch, queryParams: {
                  //             'rental-car-type':
                  //                 RentalCarType.selfDrivingCar.name,
                  //           });
                  //         } else {
                  //           showMessageDialog(
                  //             title: 'Thông báo',
                  //             message: 'Bạn phải cập nhật thông tin bằng lái',
                  //           );
                  //         }
                  //       },
                  //     ),
                  //     const SizedBox(width: s16),
                  //     CarOption(
                  //       carImage: Images.carWithDriver,
                  //       text: 'Xe có tài xế',
                  //       onTap: () {
                  //         context.goNamed(RouteName.carSearch, queryParams: {
                  //           'rental-car-type': RentalCarType.carWithDriver.name,
                  //         });
                  //       },
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: s08),
                  GestureDetector(
                    onTap: () {
                      context.goNamed(RouteName.carSearch);
                    },
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        // hintText: 'Tìm xe',
                        hintStyle: secondaryTextStyle(),
                        fillColor: CustomColors.gainsboro,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: radius(defaultRadius),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: radius(defaultRadius),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                        ),
                        prefixIcon: IconButton(
                          icon: const Icon(
                            Icons.search,
                            size: 20,
                            color: CustomColors.silver,
                          ),
                          onPressed: () {},
                        ),
                        // suffixIcon: IconButton(
                        //   icon: const Icon(
                        //     Icons.filter_alt_outlined,
                        //     size: 20,
                        //     color: CustomColors.silver,
                        //   ),
                        //   onPressed: () {},
                        // ),
                      ),
                      child: Text(
                        'Tìm xe',
                        style: secondaryTextStyle(),
                      ),
                    ).paddingSymmetric(horizontal: 8),
                  ),

                  ListTile(
                    title: Text('Xe nổi bật', style: boldTextStyle(size: 16)),
                  ),
                  // SizedBox(
                  //   height: 30,
                  //   child: ListView.builder(
                  //     padding: const EdgeInsets.only(left: s08),
                  //     shrinkWrap: true,
                  //     itemCount: 3,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return GestureDetector(
                  //         onTap: () {
                  //           context.read<HomeBloc>().add(
                  //                 HomeEvent.topDealIndexChanged(index),
                  //               );
                  //         },
                  //         child: Container(
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: s16,
                  //             vertical: s04,
                  //           ),
                  //           decoration: BoxDecoration(
                  //             border: Border.all(color: CustomColors.primary),
                  //             color: successState.topDealIndex == index
                  //                 ? cardDarkColor
                  //                 : white,
                  //             borderRadius: BorderRadius.circular(16),
                  //           ),
                  //           child: Text(
                  //             topDeals[index],
                  //             style: TextStyle(
                  //               color: successState.topDealIndex == index
                  //                   ? white
                  //                   : black,
                  //             ),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ).paddingRight(8),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // const SizedBox(height: s08),
                  SizedBox(
                    height: 260,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return CarCard(
                          car: successState.topDeals[index],
                          onTap: (id) {
                            context.pushNamed(
                              RouteName.carDetail,
                              queryParams: {
                                'car-id': id,
                                // 'rental-car-type': successState
                                //     .topDeals[index].rentalCarType.name,
                              },
                            );
                          },
                        );
                      },
                      itemCount: successState.topDeals.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  ListTile(
                    title: Text('Địa điểm nổi bật',
                        style: boldTextStyle(size: 16)),
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return LocationCard(
                          type: LocationCardType.values[index],
                          onTap: () {
                            final currentDate = DateTime.now();

                            final defaultStartDate = DateTime(
                              currentDate.year,
                              currentDate.month,
                              currentDate.day,
                              currentDate.hour + 2,
                              currentDate.minute,
                              0,
                              0,
                              0,
                            );
                            context.pushNamed(RouteName.carSearchResult,
                                queryParams: {
                                  // 'rental-car-type':
                                  //     RentalCarType.selfDrivingCar.name,
                                  'start-date': defaultStartDate.toString(),
                                  'end-date': defaultStartDate
                                      .add(const Duration(days: 1))
                                      .toString(),
                                  'address': getLocationName(
                                      LocationCardType.values[index]),
                                  'latitude': getLocationLatitude(
                                          LocationCardType.values[index])
                                      .toString(),
                                  'longitude': getLocationLongitude(
                                          LocationCardType.values[index])
                                      .toString(),
                                  'distance': 50.toString(),
                                });
                          },
                        );
                      },
                      itemCount: LocationCardType.values.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  // ListTile(
                  //   title: Text(
                  //     'Địa điểm nổi bật - Xe có tài xế',
                  //     style: boldTextStyle(size: 16),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 130,
                  //   child: ListView.builder(
                  //     itemBuilder: (context, index) {
                  //       return LocationCard(
                  //         type: LocationCardType.values[index],
                  //         onTap: () {
                  //           final currentDate = DateTime.now();

                  //           final defaultStartDate = DateTime(
                  //             currentDate.year,
                  //             currentDate.month,
                  //             currentDate.day,
                  //             8,
                  //             0,
                  //             0,
                  //             0,
                  //             0,
                  //           );
                  //           context.pushNamed(RouteName.carSearchResult,
                  //               queryParams: {
                  //                 'rental-car-type':
                  //                     RentalCarType.carWithDriver.name,
                  //                 'start-date': defaultStartDate.toString(),
                  //                 'end-date': defaultStartDate
                  //                     .add(const Duration(days: 1))
                  //                     .toString(),
                  //                 'address': getLocationName(
                  //                     LocationCardType.values[index]),
                  //                 'latitude': getLocationLatitude(
                  //                         LocationCardType.values[index])
                  //                     .toString(),
                  //                 'longitude': getLocationLongitude(
                  //                         LocationCardType.values[index])
                  //                     .toString(),
                  //               });
                  //         },
                  //       );
                  //     },
                  //     itemCount: LocationCardType.values.length,
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
