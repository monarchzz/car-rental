part of 'transaction_history_bloc.dart';

@freezed
class TransactionHistoryState with _$TransactionHistoryState {
  const factory TransactionHistoryState({
    ScrollPagination<Transaction>? scrollPagination,
  }) = _TransactionHistoryState;
}
