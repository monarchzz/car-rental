part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = _Started;
  const factory NotificationEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
