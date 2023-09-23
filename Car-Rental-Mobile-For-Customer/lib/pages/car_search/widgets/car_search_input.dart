import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarSearchInput extends StatelessWidget {
  const CarSearchInput({
    Key? key,
    required this.label,
    required this.leadingIcon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final IconData leadingIcon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              // color: CustomColors.flamingo,
            ),
          ),
          const SizedBox(
            height: s04,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    leadingIcon,
                    size: 20,
                    // color: CustomColors.flamingo,
                  ),
                  const SizedBox(
                    height: s04,
                  )
                ],
              ),
              const SizedBox(width: s08),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Divider(
                      color: CustomColors.silver,
                      thickness: 1,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
