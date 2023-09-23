import 'package:car_rental_for_customer/pages/payment_webview/views/payment_webview_view.dart';
import 'package:flutter/material.dart';

class PaymentWebviewPage extends StatelessWidget {
  const PaymentWebviewPage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return PaymentWebviewView(url: url);
  }
}
