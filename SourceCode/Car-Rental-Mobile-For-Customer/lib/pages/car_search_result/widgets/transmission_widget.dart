import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransmissionWidget extends StatefulWidget {
  const TransmissionWidget({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  final CarSearchResultBloc bloc;

  @override
  State<TransmissionWidget> createState() => _TransmissionWidgetState();
}

class _TransmissionWidgetState extends State<TransmissionWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocBuilder<CarSearchResultBloc, CarSearchResultState>(
        builder: (context, state) {
          final filter =
              state.mapOrNull(success: (state) => state.carSearchFilter);
          if (filter == null) return const SizedBox();

          final transmission = filter.transmission;
          return SizedBox(
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: s08),
                  const Center(
                    child: Text(
                      'Truyền động',
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
                      child: DropdownButton<TransmissionEnum?>(
                        isExpanded: true,
                        value: transmission,
                        elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        onChanged: (TransmissionEnum? newValue) {
                          setState(() {
                            widget.bloc.add(
                              CarSearchResultEvent.transmissionFilterChanged(
                                transmission: newValue,
                              ),
                            );
                          });
                        },
                        items: [
                          const DropdownMenuItem<TransmissionEnum>(
                            value: null,
                            child: Text('Tất cả'),
                          ),
                          ...TransmissionEnum.values
                              .map<DropdownMenuItem<TransmissionEnum>>(
                                  (TransmissionEnum value) {
                            return DropdownMenuItem<TransmissionEnum>(
                              value: value,
                              child: Text(value.displayName),
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
