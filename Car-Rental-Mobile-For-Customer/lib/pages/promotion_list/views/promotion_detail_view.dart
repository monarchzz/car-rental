import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PromotionDetailView extends StatefulWidget {
  const PromotionDetailView({super.key, required this.promotion});

  final Promotion promotion;

  @override
  State<PromotionDetailView> createState() => _PromotionDetailViewState();
}

class _PromotionDetailViewState extends State<PromotionDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: widget.promotion.name,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              widget.promotion.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Áp dụng đến ${DateFormat('dd/MM/yyyy').format(
                widget.promotion.expiryAt ??
                    DateTime.now().add(
                      const Duration(days: 30),
                    ),
              )}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColors.jetBlack,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.promotion.description ?? '',
              style: const TextStyle(
                fontSize: 16,
                color: CustomColors.flamingo,
              ),
            ),
            const SizedBox(height: 64),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '•\tCó giá trị đến ngày ${DateFormat('dd/MM/yyyy').format(
                    widget.promotion.expiryAt ??
                        DateTime.now().add(
                          const Duration(days: 30),
                        ),
                  )}. Chỉ áp dụng cho khác hàng nhận được thông báo',
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                const Text(
                  '•\tKhông áp dụng chung với các chương trình khuyến mãi khác',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const Text(
                  '•\tMỗi chuyến đi chỉ được sử dụng 1 mã khuyễn mãi',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, widget.promotion);
                    },
                    child: const Text('Sử dụng'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
