part of 'notifications_bloc.dart';

sealed class NotificationsEvent {
  const NotificationsEvent();
}

class NotificationStatusChange extends NotificationsEvent {
  final AuthorizationStatus status;
  NotificationStatusChange(this.status);
}

class NotificationsReceived extends NotificationsEvent {
  final PushMessage pushMessage;

  NotificationsReceived(this.pushMessage);
}
