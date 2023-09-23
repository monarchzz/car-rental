import 'package:car_rental_for_customer/app/bloc/authentication_bloc.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/wallet/bloc/wallet_bloc.dart';
import 'package:car_rental_for_customer/pages/wallet/views/wallet_view.dart';
import 'package:car_rental_for_customer/repositories/transaction_repository.dart';
import 'package:car_rental_for_customer/repositories/wallet_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocProvider.value(
          value: WalletBloc(
            transactionRepository: getIt.get<TransactionRepository>(),
            walletRepository: getIt.get<WalletRepository>(),
          )..add(
              WalletEvent.started(user: state.user!),
            ),
          child: const WalletView(),
        );
      },
    );
  }
}
