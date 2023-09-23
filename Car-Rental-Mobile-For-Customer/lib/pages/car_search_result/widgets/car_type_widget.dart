import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/models/car_search_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarTypeWidget extends StatefulWidget {
  const CarTypeWidget({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  final CarSearchResultBloc bloc;

  @override
  State<CarTypeWidget> createState() => _CarTypeWidgetState();
}

class _CarTypeWidgetState extends State<CarTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocBuilder<CarSearchResultBloc, CarSearchResultState>(
        builder: (context, state) {
          final filter =
              state.mapOrNull(success: (state) => state.carSearchFilter);
          if (filter == null) return const SizedBox();

          final carType = filter.carType;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: s08),
              const Center(
                child: Text(
                  'Loại xe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carTypeWidget(
                          imageUrl: 'assets/mf-4-mini.png',
                          title: '4 Chỗ\n(Mini)',
                          carType: CarTypeEnum.mini,
                          selected: carType == CarTypeEnum.mini,
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carTypeWidget(
                          imageUrl: 'assets/mf-4-sedan.png',
                          title: '4 Chỗ\n(Sedan)',
                          carType: CarTypeEnum.sedan,
                          selected: carType == (CarTypeEnum.sedan),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carTypeWidget(
                          imageUrl: 'assets/mf-4-hatchback.png',
                          title: '4 Chỗ\n(Hatchback)',
                          carType: CarTypeEnum.hatchback,
                          selected: carType == (CarTypeEnum.hatchback),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carTypeWidget(
                          imageUrl: 'assets/mf-5-suv.png',
                          title: '5 chỗ\n(Gầm cao)',
                          carType: CarTypeEnum.highChassis5,
                          selected: carType == (CarTypeEnum.highChassis5),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carTypeWidget(
                          imageUrl: 'assets/mf-7-suv.png',
                          title: '7 Chỗ\n(Gầm cao)',
                          carType: CarTypeEnum.highChassis7,
                          selected: carType == (CarTypeEnum.highChassis7),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carTypeWidget(
                          imageUrl: 'assets/mf-7-mpv.png',
                          title: '7 Chỗ\n(Gầm thấp)',
                          carType: CarTypeEnum.lowChassis7,
                          selected: carType == (CarTypeEnum.lowChassis7),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carTypeWidget(
                          imageUrl: 'assets/mf-pickup.png',
                          title: 'Bán tải',
                          carType: CarTypeEnum.pickupTruck,
                          selected: carType == (CarTypeEnum.pickupTruck),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(s04),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: CustomColors.gainsboro,
                              border: Border.all(
                                color: CustomColors.white,
                              ),
                            ),
                            child: const Icon(Icons.close),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _handleCarTypeTap(
    CarTypeEnum type,
    BuildContext context,
    CarSearchFilter filter,
    bool selected,
  ) {
    context.read<CarSearchResultBloc>().add(
          CarSearchResultEvent.carTypeFilterChanged(
            carType: selected ? type : null,
          ),
        );
  }

  Widget carTypeWidget({
    required String imageUrl,
    required String title,
    required CarTypeEnum carType,
    required bool selected,
    required Function(CarTypeEnum type, bool selected) onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(carType, !selected),
      child: Container(
        margin: const EdgeInsets.all(s04),
        child: Column(
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: selected ? Colors.transparent : CustomColors.gainsboro,
                  border: Border.all(
                    color: selected ? CustomColors.black : CustomColors.white,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 50,
                    height: 50,
                  ),
                )),
            const SizedBox(height: s08),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
