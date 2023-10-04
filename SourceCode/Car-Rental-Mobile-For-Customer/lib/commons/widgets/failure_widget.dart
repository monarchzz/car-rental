import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Error',
            style: primaryTextStyle(),
          ),
          const SizedBox(
            height: s04,
          ),
          Text(message ?? 'Oops, something went wrong. Please try again later.')
        ],
      ),
    );
  }
}
