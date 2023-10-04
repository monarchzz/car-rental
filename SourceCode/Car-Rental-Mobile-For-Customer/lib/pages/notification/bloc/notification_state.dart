part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    ScrollPagination<Notification>? scrollPagination,
  }) = _NotificationState;
}
