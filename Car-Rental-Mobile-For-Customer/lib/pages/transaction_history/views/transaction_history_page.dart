import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/transaction_history/bloc/transaction_history_bloc.dart';
import 'package:car_rental_for_customer/pages/transaction_history/views/transaction_history_view.dart';
import 'package:car_rental_for_customer/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: TransactionHistoryBloc(
        transactionRepository: getIt.get<TransactionRepository>(),
      )..add(
          const TransactionHistoryEvent.started(),
        ),
      child: const TransactionHistoryView(),
    );
  }
}
