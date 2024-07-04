import 'package:bloc/bloc.dart';
import 'package:social_app/features/chats/data/repos/room_repo.dart';
import 'room_state.dart';

class RoomCubit extends Cubit<RoomState> {
  final RoomRepo _repo;
  RoomCubit(this._repo) : super(const RoomState.initial());

  Future<void> getRooms() async {
    emit(const RoomState.getRoomsLoading());
    final result = await _repo.getRoom();
    result.fold(
      (error) => emit(RoomState.getRoomsError(error: error.errorMessage)),
      (rooms) {
        emit(RoomState.getRoomsSuccess(rooms));
      },
    );
  }

  Future<void> createRoom({
    required String toId,
    required String userName,
    required String userPicture,
  }) async {
    emit(const RoomState.createRoomsLoading());
    final result = await _repo.creatRoom(
      toId: toId,
      userName: userName,
      userPicture: userPicture,
    );
    result.fold(
      (error) => emit(RoomState.createRoomsError(error: error.errorMessage)),
      (message) {
        emit(RoomState.createRoomsSuccess(message));
      },
    );
  }
}
