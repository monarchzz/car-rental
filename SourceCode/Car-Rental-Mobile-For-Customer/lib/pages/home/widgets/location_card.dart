import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

enum LocationCardType {
  hoChiMinh,
  haNoi,
  daNang,
  // binhDuong,
  // canTho,
  // daLat,
}

String getLocationName(LocationCardType type) {
  switch (type) {
    case LocationCardType.hoChiMinh:
      return 'Hồ Chí Minh';
    case LocationCardType.haNoi:
      return 'Hà Nội';
    case LocationCardType.daNang:
      return 'Đà Nẵng';
    // case LocationCardType.binhDuong:
    //   return 'Bình Dương';
    // case LocationCardType.canTho:
    //   return 'Cần Thơ';
    // case LocationCardType.daLat:
    //   return 'Đà Lạt';
  }
}

double getLocationLatitude(LocationCardType type) {
  switch (type) {
    case LocationCardType.hoChiMinh:
      return 10.8230989;
    case LocationCardType.haNoi:
      return 21.0277644;
    case LocationCardType.daNang:
      return 16.0544563;
    // case LocationCardType.binhDuong:
    //   return 11.3254024;
    // case LocationCardType.canTho:
    //   return 10.0451618;
    // case LocationCardType.daLat:
    //   return 11.9404192;
  }
}

double getLocationLongitude(LocationCardType type) {
  switch (type) {
    case LocationCardType.hoChiMinh:
      return 106.6296638;
    case LocationCardType.haNoi:
      return 105.8341598;
    case LocationCardType.daNang:
      return 108.0717219;
    // case LocationCardType.binhDuong:
    //   return 106.477017;
    // case LocationCardType.canTho:
    //   return 105.7468535;
    // case LocationCardType.daLat:
    //   return 108.4583132;
  }
}

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key, required this.onTap, required this.type})
      : super(key: key);

  final VoidCallback onTap;
  final LocationCardType type;

  String get locationImages {
    switch (type) {
      case LocationCardType.hoChiMinh:
        return 'assets/ho_chi_minh.jpg';
      case LocationCardType.haNoi:
        return 'assets/ha_noi.jpg';
      case LocationCardType.daNang:
        return 'assets/da_nang.jpg';
      // case LocationCardType.binhDuong:
      //   return 'assets/binh_duong.jpg';
      // case LocationCardType.canTho:
      //   return 'assets/can_tho.jpg';
      // case LocationCardType.daLat:
      //   return 'assets/da_lat.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: s08),
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                locationImages,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getLocationName(type),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // const Text(
                //   '800+ xe',
                //   style: TextStyle(
                //     fontSize: 12,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
