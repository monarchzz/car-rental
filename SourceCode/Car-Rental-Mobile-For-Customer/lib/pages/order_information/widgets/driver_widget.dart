import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({
    Key? key,
    required this.driver,
    required this.onTap,
  }) : super(key: key);

  final Driver driver;
  final Function(Driver driver) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(driver),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  driver.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.jetBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      driver.phone,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.dimGray,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          if (driver.avatarUrl != null)
            CachedNetworkImage(
              imageUrl: driver.avatarUrl ?? '',
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
