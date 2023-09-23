import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarOption extends StatelessWidget {
  const CarOption({
    Key? key,
    required this.carImage,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String carImage;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Card(
            color: CustomColors.gainsboro,
            elevation: 3,
            child: Container(
              padding: const EdgeInsets.all(s16),
              decoration: BoxDecoration(
                color: CustomColors.gainsboro,
                borderRadius: BorderRadius.circular(s08),
              ),
              width: 120,
              height: 80,
              child: Image(
                fit: BoxFit.fitHeight,
                image: AssetImage(carImage),
              ),
            ),
          ),
          const SizedBox(height: s04),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
