part of 'transaction_detail_bloc.dart';

@freezed
class TransactionDetailState with _$TransactionDetailState {
  const factory TransactionDetailState({Transaction? transaction}) =
      _TransactionDetailState;
}
