import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/transaction.dart';
import 'package:car_rental_for_customer/repositories/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail_event.dart';
part 'transaction_detail_state.dart';
part 'transaction_detail_bloc.freezed.dart';

class TransactionDetailBloc
    extends Bloc<TransactionDetailEvent, TransactionDetailState> {
  TransactionDetailBloc({
    required this.transactionRepository,
  }) : super(const TransactionDetailState()) {
    on<_Started>(_onStarted);
  }

  final TransactionRepository transactionRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<TransactionDetailState> emit,
  ) async {
    final transactionResult = await transactionRepository.transactionById(
        transactionId: event.transactionId);

    if (transactionResult is ApiError) {
      return;
    }

    final transaction = (transactionResult as ApiSuccess<Transaction>).value;

    emit(TransactionDetailState(transaction: transaction));
  }
}
