part of 'transaction_history_bloc.dart';

@freezed
class TransactionHistoryEvent with _$TransactionHistoryEvent {
  const factory TransactionHistoryEvent.started() = _Started;
  const factory TransactionHistoryEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
