import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../my_profile/data/models/profile_response/profile_response.dart';
import '../../data/models/room_model/rooms_response.dart';

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

  const factory RoomState.getUsersLoading() = GetUsersLoading;

  const factory RoomState.getUsersSuccess(UsersResponse users) =
      GetUsersSuccess<T>;

  const factory RoomState.getUsersError({required String error}) =
      GetUsersError;
}
