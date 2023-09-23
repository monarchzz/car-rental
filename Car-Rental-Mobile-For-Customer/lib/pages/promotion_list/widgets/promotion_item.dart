import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PromotionItem extends StatelessWidget {
  const PromotionItem({
    super.key,
    required this.promotion,
    required this.onTap,
  });

  final Promotion promotion;
  final void Function(Promotion promotion) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
          onTap: () {
            onTap(promotion);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ),
            child: Row(
              children: [
                Image.asset(
                  Images.coupon,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ).cornerRadiusWithClipRRect(60),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        promotion.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.flamingo,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        promotion.description ?? '',
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
