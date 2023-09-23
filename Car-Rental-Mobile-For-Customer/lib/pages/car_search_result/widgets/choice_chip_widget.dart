import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({
    Key? key,
    required this.label,
    required this.selected,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final bool selected;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: s12, vertical: s04),
        decoration: BoxDecoration(
          color: selected ? CustomColors.flamingo : CustomColors.white,
          borderRadius: BorderRadius.circular(s12),
          border: Border.all(
            color: selected ? CustomColors.flamingo : CustomColors.silver,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: selected ? CustomColors.white : CustomColors.flamingo,
              size: 18,
            ),
            const SizedBox(width: s04),
            Text(
              label,
              style: TextStyle(
                color: selected ? CustomColors.white : CustomColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
