import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../data/repo/room_repo.dart';
import '../../data/models/room_model/rooms_response.dart';
import 'room_state.dart';

class RoomCubit extends Cubit<RoomState> {
  final RoomRepo _repo;
  RoomCubit(this._repo) : super(const Initial());

  RoomsResponse? _roomsList;
  StreamSubscription<RoomsResponse>? _roomsSubscription;

  Future<void> getRooms() async {
    emit(const GetRoomsLoading());
    final result =
        await _repo.getRoomsStream(CashHelper.get(key: CashConstants.userId));
    result.fold(
      (error) => emit(GetRoomsError(error.errorMessage)),
      (roomsStream) {
        _roomsSubscription?.cancel(); // Cancel any existing subscription
        _roomsSubscription = roomsStream.listen(
          (roomsResponse) {
            _roomsList = roomsResponse;
            // if (roomsResponse.rooms?.any((room) => room.members
            //         .contains(CashHelper.get(key: CashConstants.userId))) ??
            //     false) {}
            emit(GetRoomsSuccess(roomsResponse));
          },
          onError: (error) {
            emit(GetRoomsError(error.toString()));
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    _roomsSubscription?.cancel();
    return super.close();
  }

  Future<void> createRoom({
    required String toId,
    required String userName,
    required String userPicture,
  }) async {
    emit(const CreateRoomsLoading());
    final result = await _repo.creatRoom(
      toId: toId,
      userName: userName,
      userPicture: userPicture,
    );
    result.fold(
      (error) => emit(CreateRoomsError(error.errorMessage)),
      (message) {
        emit(CreateRoomsSuccess(message));
      },
    );
  }

  Future<void> getOrCreateRoom({
    required String toId,
    required String userName,
    required String userPicture,
  }) async {
    emit(const GetRoomByMembersLoading());
    final result = await _repo.getOrCreateRoom(
      toId: toId,
      userName: userName,
      userPicture: userPicture,
    );
    result.fold(
      (error) => emit(GetRoomByMembersError(error.errorMessage)),
      (room) {
        emit(GetRoomByMembersSuccess(room));
      },
    );
  }

  List<RoomsData> _usersFiltered = [];
  void searchUserRoom(TextEditingController textControler) {
    _usersFiltered = _roomsList!.rooms!
        .where((element) => element.otherUserDetails!.name!
            .toLowerCase()
            .startsWith(textControler.text.trim()))
        .toList();
    emit(GetRoomsFilteredSuccess(_usersFiltered));
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> unReadMessagesCount(
      String roomId) {
    return _repo.unReadMessagesCount(roomId);
  }

  void clear(TextEditingController textControler) {
    textControler.clear();
    _usersFiltered.clear();
    emit(GetRoomsSuccess(_roomsList!));
  }

  // Future<void> getRooms() async {
  //   emit(const RoomState.getRoomsLoading());
  //   final result = await _repo.getRoom();
  //   result.fold(
  //     (error) => emit(RoomState.getRoomsError(error: error.errorMessage)),
  //     (rooms) {
  //       _roomsList = rooms;
  //       emit(RoomState.getRoomsSuccess(rooms));
  //     },
  //   );
  // }
}
