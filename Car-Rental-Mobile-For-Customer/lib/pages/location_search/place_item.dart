import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PlaceItem extends StatelessWidget {
  const PlaceItem({
    Key? key,
    required this.place,
    required this.onTap,
  }) : super(key: key);

  final Place place;
  final Function(Place place) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(place),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: s04),
        child: Row(
          children: [
            const Icon(Icons.location_on_outlined),
            const SizedBox(width: s08),
            SizedBox(
              width: context.width() * 0.8,
              child: Text(
                place.formattedAddress,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
