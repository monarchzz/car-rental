import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:flutter/material.dart';

class HorizontalIcon extends StatelessWidget {
  const HorizontalIcon({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 4,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: CustomColors.silver,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
