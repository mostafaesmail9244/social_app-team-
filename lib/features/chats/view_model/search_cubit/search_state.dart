import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.buildAppBar() = BuildAppBar;

  const factory SearchState.getUsersLoading() = GetUsersLoading;

  const factory SearchState.getUsersError({required String error}) =
      GetUsersError;
  const factory SearchState.getUsersSuccess(UsersResponse users) =
      GetUsersSuccess<T>;
  const factory SearchState.filterUserSuccess(List<UserData> usersFiltered) =
      FilterUserSuccess<T>;
}
