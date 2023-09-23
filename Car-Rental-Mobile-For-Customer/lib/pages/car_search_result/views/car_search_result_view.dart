import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/failure_widget.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/widgets/car_item.dart';
import 'package:car_rental_for_customer/pages/car_search_result/widgets/car_type_widget.dart';
import 'package:car_rental_for_customer/pages/car_search_result/widgets/choice_chip_widget.dart';
import 'package:car_rental_for_customer/pages/car_search_result/widgets/production_company_widget.dart';
import 'package:car_rental_for_customer/pages/car_search_result/widgets/transmission_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:nb_utils/nb_utils.dart';

class CarSearchResultView extends StatefulWidget {
  const CarSearchResultView({Key? key}) : super(key: key);

  @override
  State<CarSearchResultView> createState() => _CarSearchResultViewState();
}

class _CarSearchResultViewState extends State<CarSearchResultView> {
  final PagingController<int, Car> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<CarSearchResultBloc>()
          .add(CarSearchResultEvent.pageRequested(pageKey: pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  void _onCarTypeFilterTap() {
    final bloc = BlocProvider.of<CarSearchResultBloc>(context);

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CarTypeWidget(bloc: bloc);
      },
    );
  }

  void _onTransmissionFilterTap() {
    final bloc = BlocProvider.of<CarSearchResultBloc>(context);

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return TransmissionWidget(bloc: bloc);
      },
    );
  }

  void _onProductionCompanyFilterTap() {
    final bloc = BlocProvider.of<CarSearchResultBloc>(context);

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ProductionCompanyWidget(bloc: bloc);
      },
    );
  }

  void _onDiscountFilterTap() {
    final bloc = BlocProvider.of<CarSearchResultBloc>(context);

    bloc.add(
      const CarSearchResultEvent.isDiscountedFilterChanged(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarSearchResultBloc, CarSearchResultState>(
        listener: (context, state) {
      final success = state.mapOrNull(success: (value) => value);
      if (success == null) return;
      final scrollPagination = success.scrollPagination;
      if (scrollPagination != null) {
        _pagingController.value = PagingState(
          nextPageKey: scrollPagination.nextPageKey,
          error: scrollPagination.error,
          itemList: scrollPagination.itemList,
        );
      }
    }, builder: (context, state) {
      return state.map(
        initial: (value) => const LoadingWidget(),
        loading: (value) => const LoadingWidget(),
        success: (value) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 50,
              backgroundColor: CustomColors.appBarColor,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: s02),
                  Text(
                    value.address,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: s04),
                  Text(
                    dateRangeToString(
                      value.startDate,
                      value.endDate,
                      hasYear: false,
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(s08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ChoiceChipWidget(
                            label: 'Hãng xe',
                            selected:
                                value.carSearchFilter.productionCompany != null,
                            icon: Icons.memory_outlined,
                            onTap: _onProductionCompanyFilterTap,
                          ),
                          // ChoiceChipWidget(
                          //   label: 'Loại xe',
                          //   selected: value.carSearchFilter.carType != null,
                          //   icon: Icons.drive_eta_outlined,
                          //   onTap: _onCarTypeFilterTap,
                          // ),
                          // const SizedBox(width: s08),
                          // ChoiceChipWidget(
                          //   label: 'Truyền động',
                          //   selected:
                          //       value.carSearchFilter.transmission != null,
                          //   icon: Icons.memory_outlined,
                          //   onTap: _onTransmissionFilterTap,
                          // ),
                          // const SizedBox(width: s08),
                          // ChoiceChipWidget(
                          //   label: 'Xe giảm giá',
                          //   selected: value.carSearchFilter.isDiscounted,
                          //   icon: Icons.percent_outlined,
                          //   onTap: _onDiscountFilterTap,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: PagedListView(
                      scrollDirection: Axis.vertical,
                      builderDelegate: PagedChildBuilderDelegate<Car>(
                        animateTransitions: true,
                        noItemsFoundIndicatorBuilder: (context) {
                          return Column(
                            children: const [
                              Text(
                                'Không tìm thấy xe',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          );
                        },
                        itemBuilder: (context, item, index) => CarItem(
                          onTap: (id) {
                            context.pushNamed(
                              RouteName.carDetail,
                              queryParams: {
                                'car-id': id,
                                'address': value.address,
                                'start-date': value.startDate.toString(),
                                'end-date': value.endDate.toString(),
                                'longitude': value.longitude.toString(),
                                'latitude': value.latitude.toString(),
                              },
                            );
                          },
                          car: item,
                        ),
                      ),
                      pagingController: _pagingController,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        failure: (value) => FailureWidget(message: value.message),
      );
    });
  }
}
