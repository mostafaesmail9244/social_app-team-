import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/profile_response/profile_response.dart';
part 'get_user_states.freezed.dart';

@Freezed()
class GetUserStates<T> with _$GetUserStates {
  const factory GetUserStates.initial() = _Initial;
  const factory GetUserStates.getUserLoading() = GetUserLoading;
  const factory GetUserStates.getUserSuccess(UserData data) = GetuserSuccess<T>;
  const factory GetUserStates.getUserError({required String error}) =
      GetUserError;
}
