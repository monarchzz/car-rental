import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/production_company.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductionCompanyWidget extends StatefulWidget {
  const ProductionCompanyWidget({super.key, required this.bloc});

  final CarSearchResultBloc bloc;

  @override
  State<ProductionCompanyWidget> createState() =>
      _ProductionCompanyWidgetState();
}

class _ProductionCompanyWidgetState extends State<ProductionCompanyWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocBuilder<CarSearchResultBloc, CarSearchResultState>(
        builder: (context, state) {
          final successState = state.mapOrNull(success: (state) => state);
          final filter =
              state.mapOrNull(success: (state) => state.carSearchFilter);
          if (filter == null || successState == null) return const SizedBox();

          final productionCompany = filter.productionCompany;
          return SizedBox(
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: s08),
                  const Center(
                    child: Text(
                      'Hãng xe',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: s08),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: SizedBox(
                      width: double.infinity,
                      child: DropdownButton<ProductionCompany?>(
                        isExpanded: true,
                        value: productionCompany,
                        elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        onChanged: (ProductionCompany? newValue) {
                          setState(() {
                            widget.bloc.add(
                              CarSearchResultEvent
                                  .productionCompanyFilterChanged(
                                productionCompany: newValue,
                              ),
                            );
                          });
                        },
                        items: [
                          const DropdownMenuItem<ProductionCompany>(
                            value: null,
                            child: Text('Tất cả'),
                          ),
                          ...successState.allProductionCompanies
                              .map<DropdownMenuItem<ProductionCompany>>(
                                  (ProductionCompany value) {
                            return DropdownMenuItem<ProductionCompany>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
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
                  ),
                  const SizedBox(height: s08),
                ],
              ));
        },
      ),
    );
  }
}
