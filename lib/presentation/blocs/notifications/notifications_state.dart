part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {
  final AuthorizationStatus status;
  final List<PushMessage> notifications;

  const NotificationsState(
      {this.status = AuthorizationStatus.notDetermined,
      this.notifications = const []});

  NotificationsState copyWith(
          {AuthorizationStatus? status, List<PushMessage>? notifications}) =>
      NotificationsState(
          notifications: notifications ?? this.notifications,
          status: status ?? this.status);

  @override
  List<Object> get props => [status, notifications];
}
