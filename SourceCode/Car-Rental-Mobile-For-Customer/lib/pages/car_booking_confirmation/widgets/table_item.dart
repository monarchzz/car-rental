import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class TableItem extends StatelessWidget {
  const TableItem({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(s08),
      child: Center(
        child: child,
      ),
    );
  }
}
