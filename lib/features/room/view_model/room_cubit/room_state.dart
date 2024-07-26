import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../my_profile/data/models/profile_response/profile_response.dart';
import '../../../room/data/models/room_model/rooms_response.dart';
part 'room_state.freezed.dart';

@freezed
class RoomState<T> with _$RoomState {
  const factory RoomState.initial() = _Initial;

  const factory RoomState.getRoomsLoading() = GetRoomsLoading;

  const factory RoomState.getRoomsSuccess(RoomsResponse rooms) =
      GetRoomsSuccess<T>;

  const factory RoomState.getRoomsError({required String error}) =
      GetRoomsError;

  const factory RoomState.createRoomsLoading() = CreateRoomsLoading;

  const factory RoomState.createRoomsSuccess(String message) =
      CreateRoomsSuccess;

  const factory RoomState.createRoomsError({required String error}) =
      CreateRoomsError;

  const factory RoomState.getRoomByMembersLoading() = _GetRoomByMembersLoading;
  const factory RoomState.getRoomByMembersSuccess(RoomsData room) =
      _GetRoomByMembersSuccess;
  const factory RoomState.getRoomByMembersError({required String error}) =
      _GetRoomByMembersError;
}
