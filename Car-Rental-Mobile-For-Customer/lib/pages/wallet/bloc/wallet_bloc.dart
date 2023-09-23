import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/transaction.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/models/wallet.dart';
import 'package:car_rental_for_customer/repositories/transaction_repository.dart';
import 'package:car_rental_for_customer/repositories/wallet_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc({
    required this.transactionRepository,
    required this.walletRepository,
  }) : super(const WalletState.initial()) {
    on<_Started>(_onStarted);
  }

  final TransactionRepository transactionRepository;
  final WalletRepository walletRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<WalletState> emit,
  ) async {
    emit(const WalletState.loading());

    final transactionResult = await transactionRepository.transactions(
      pageNumber: 1,
      pageSize: 10,
    );

    final walletResult = await walletRepository.myWallet();
    if (walletResult is ApiError) {
      emit(
        WalletState.failure(
          message: (walletResult as ApiError).error ?? '',
        ),
      );
      return;
    }

    final transactions = (transactionResult is ApiError)
        ? <Transaction>[]
        : (transactionResult as ApiSuccess<PaginationResult<Transaction>>)
            .value
            .data;

    final wallet = (walletResult as ApiSuccess<Wallet>).value;

    emit(WalletState.success(
      user: event.user,
      transactions: transactions,
      balance: wallet.balance,
    ));
  }
}
