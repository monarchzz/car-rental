import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search/bloc/car_search_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search/widgets/car_search_input.dart';
import 'package:car_rental_for_customer/pages/car_search/widgets/datetime_range_picker.dart';
import 'package:car_rental_for_customer/pages/location_search/location_search_delegate.dart';
import 'package:car_rental_for_customer/pages/location_search/position_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CarSearchView extends StatelessWidget {
  const CarSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarSearchBloc, CarSearchState>(
      builder: (context, state) {
        if (state.startDate == null || state.endDate == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Tìm kiếm xe',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(s08),
                  child: Column(
                    children: [
                      CarSearchInput(
                          label: 'ĐỊA ĐIỂM',
                          leadingIcon: Icons.location_on_outlined,
                          text:
                              state.address ?? 'Nhập địa điểm bạn muốn thuê xe',
                          onTap: () async {
                            final bloc = context.read<CarSearchBloc>();
                            final positionResult =
                                await showSearch<PositionResult?>(
                              context: context,
                              delegate: LocationSearchDelegate(),
                            );

                            if (positionResult != null) {
                              bloc.add(
                                CarSearchEvent.addressChanged(
                                  address: positionResult.address,
                                  latitude: positionResult.lat,
                                  longitude: positionResult.lng,
                                ),
                              );
                            }
                          }),
                      const SizedBox(
                        height: s08,
                      ),
                      CarSearchInput(
                        label: 'THỜI GIAN',
                        leadingIcon: Icons.access_time,
                        text: dateRangeToString(
                          state.startDate!,
                          state.endDate!,
                        ),
                        onTap: () async {
                          final bloc = context.read<CarSearchBloc>();
                          final result = await showDialog(
                            context: context,
                            builder: (context) {
                              return DateTimeRangePicker(
                                startDate: state.startDate!,
                                endDate: state.endDate!,
                              );
                            },
                          );

                          bloc.add(
                            CarSearchEvent.dateRangeChanged(
                              startDate: result['startDate'],
                              endDate: result['endDate'],
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: s08,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: state.address == null
                                  ? null
                                  : () {
                                      context.goNamed(
                                        RouteName.carSearchResult,
                                        queryParams: {
                                          'address': state.address ?? '',
                                          'start-date':
                                              state.startDate!.toString(),
                                          'end-date': state.endDate!.toString(),
                                          'longitude':
                                              state.longitude!.toString(),
                                          'latitude':
                                              state.latitude!.toString(),
                                        },
                                      );
                                    },
                              child: const Text('Tìm xe ngay'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: s08,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 4,
                  height: s16,
                ),
                Padding(
                  padding: const EdgeInsets.all(s08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'XE NỔI BẬT',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: s04,
                      ),
                      SizedBox(
                        height: 260,
                        width: double.infinity,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return CarCard(
                              car: state.cars![index],
                              onTap: (id) {
                                context.pushNamed(
                                  RouteName.carDetail,
                                  queryParams: {
                                    'car-id': id,
                                    'address': state.address,
                                    'start-date': state.startDate?.toString(),
                                    'end-date': state.endDate?.toString(),
                                    'longitude': state.longitude?.toString(),
                                    'latitude': state.latitude?.toString(),
                                  },
                                );
                              },
                            );
                          },
                          shrinkWrap: true,
                          itemCount: state.cars?.length ?? 0,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
