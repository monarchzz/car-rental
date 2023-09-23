import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerWidget extends StatelessWidget {
  const CarOwnerWidget({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  final Car car;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  car.carOwner?.name ?? '',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.jetBlack,
                  ),
                ),
                const SizedBox(height: 4),
                // Row(
                //   children: [
                //     Text(
                //       car.carOwner?.phone ?? '',
                //       style: const TextStyle(
                //         fontSize: 11,
                //         fontWeight: FontWeight.w500,
                //         color: CustomColors.dimGray,
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
          if (car.carOwner?.avatarUrl != null)
            CachedNetworkImage(
              imageUrl: car.carOwner?.avatarUrl ?? '',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ).cornerRadiusWithClipRRect(60)
          else
            Image.asset(
              Images.userImage,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ).cornerRadiusWithClipRRect(60),
        ],
      ),
    );
  }
}
