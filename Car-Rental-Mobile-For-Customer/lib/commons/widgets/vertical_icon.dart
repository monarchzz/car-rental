import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class VerticalIcon extends StatelessWidget {
  const VerticalIcon({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: CustomColors.silver,
        ),
        const SizedBox(height: s04),
        SizedBox(
          width: 90,
          child: Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
}
