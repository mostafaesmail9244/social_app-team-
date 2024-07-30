part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatFailure extends ChatState {}

final class ChatSuccess extends ChatState {}

final class ChatImageSuccess extends ChatState {}

final class SelectBubble extends ChatState {}

final class DeleteORCopyBubble extends ChatState {}
