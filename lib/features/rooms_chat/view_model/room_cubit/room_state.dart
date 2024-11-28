// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../data/models/room_model/rooms_response.dart';
// part 'room_state.freezed.dart';

// @freezed
// class RoomState<T> with _$RoomState {
//   const factory RoomState.initial() = _Initial;

//   const factory RoomState.getRoomsLoading() = GetRoomsLoading;

//   const factory RoomState.getRoomsSuccess(RoomsResponse rooms) =
//       GetRoomsSuccess<T>;

//   const factory RoomState.getRoomsError({required String error}) =
//       GetRoomsError;

//   const factory RoomState.getRoomsFilteredSuccess(List<RoomsData> roomsList) =
//       GetRoomsFilteredSuccess<T>;

//   const factory RoomState.createRoomsLoading() = CreateRoomsLoading;

//   const factory RoomState.createRoomsSuccess(String message) =
//       CreateRoomsSuccess;

//   const factory RoomState.createRoomsError({required String error}) =
//       CreateRoomsError;

//   const factory RoomState.getRoomByMembersLoading() = _GetRoomByMembersLoading;
//   const factory RoomState.getRoomByMembersSuccess(RoomsData room) =
//       _GetRoomByMembersSuccess;
//   const factory RoomState.getRoomByMembersError({required String error}) =
//       _GetRoomByMembersError;
// }

import '../../data/models/room_model/rooms_response.dart';

sealed class RoomState {
  const RoomState();
}

class Initial extends RoomState {
  const Initial();
}

class GetRoomsLoading extends RoomState {
  const GetRoomsLoading();
}

class GetRoomsSuccess extends RoomState {
  final RoomsResponse rooms;
  const GetRoomsSuccess(this.rooms);
}

class GetRoomsError extends RoomState {
  final String error;
  const GetRoomsError(this.error);
}

class GetRoomsFilteredSuccess extends RoomState {
  final List<RoomsData> roomsList;
  const GetRoomsFilteredSuccess(this.roomsList);
}

class CreateRoomsLoading extends RoomState {
  const CreateRoomsLoading();
}

class CreateRoomsSuccess extends RoomState {
  final String message;
  const CreateRoomsSuccess(this.message);
}

class CreateRoomsError extends RoomState {
  final String error;
  const CreateRoomsError(this.error);
}

class GetRoomByMembersLoading extends RoomState {
  const GetRoomByMembersLoading();
}

class GetRoomByMembersSuccess extends RoomState {
  final RoomsData room;
  const GetRoomByMembersSuccess(this.room);
}

class GetRoomByMembersError extends RoomState {
  final String error;
  const GetRoomByMembersError(this.error);
}
