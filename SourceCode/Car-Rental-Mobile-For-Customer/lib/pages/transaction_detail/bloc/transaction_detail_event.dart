part of 'transaction_detail_bloc.dart';

@freezed
class TransactionDetailEvent with _$TransactionDetailEvent {
  const factory TransactionDetailEvent.started({
    required String transactionId,
  }) = _Started;
}
