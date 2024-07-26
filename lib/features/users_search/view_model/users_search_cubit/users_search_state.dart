import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
part 'users_search_state.freezed.dart';

@freezed
class UsersSearchState<T> with _$UsersSearchState {
  const factory UsersSearchState.initial() = _Initial;

  const factory UsersSearchState.getUsersLoading() = GetUsersLoading;

  const factory UsersSearchState.getUsersError({required String error}) =
      GetUsersError;
  const factory UsersSearchState.getUsersSuccess(UsersResponse users) =
      GetUsersSuccess<T>;
  const factory UsersSearchState.filterUserSuccess(
      List<UserData> usersFiltered) = FilterUserSuccess<T>;
}
