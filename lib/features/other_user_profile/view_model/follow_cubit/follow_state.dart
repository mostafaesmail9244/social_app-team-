part of 'follow_cubit.dart';

sealed class FollowState {
  const FollowState();
}

final class Initial extends FollowState {}

final class AddFollowSuccess extends FollowState {}
