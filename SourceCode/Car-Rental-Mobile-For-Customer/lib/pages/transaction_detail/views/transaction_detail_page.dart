import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/transaction_detail/bloc/transaction_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/transaction_detail/views/transaction_detail_view.dart';
import 'package:car_rental_for_customer/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({
    Key? key,
    this.transactionId,
  }) : super(key: key);

  final String? transactionId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: TransactionDetailBloc(
        transactionRepository: getIt.get<TransactionRepository>(),
      )..add(
          TransactionDetailEvent.started(
            transactionId: transactionId ?? '',
          ),
        ),
      child: const TransactionDetailView(),
    );
  }
}
