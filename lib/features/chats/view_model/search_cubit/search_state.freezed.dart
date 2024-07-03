// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SearchState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$BuildAppBarImplCopyWith<T, $Res> {
  factory _$$BuildAppBarImplCopyWith(_$BuildAppBarImpl<T> value,
          $Res Function(_$BuildAppBarImpl<T>) then) =
      __$$BuildAppBarImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BuildAppBarImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$BuildAppBarImpl<T>>
    implements _$$BuildAppBarImplCopyWith<T, $Res> {
  __$$BuildAppBarImplCopyWithImpl(
      _$BuildAppBarImpl<T> _value, $Res Function(_$BuildAppBarImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BuildAppBarImpl<T> implements BuildAppBar<T> {
  const _$BuildAppBarImpl();

  @override
  String toString() {
    return 'SearchState<$T>.buildAppBar()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BuildAppBarImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) {
    return buildAppBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) {
    return buildAppBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (buildAppBar != null) {
      return buildAppBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) {
    return buildAppBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) {
    return buildAppBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (buildAppBar != null) {
      return buildAppBar(this);
    }
    return orElse();
  }
}

abstract class BuildAppBar<T> implements SearchState<T> {
  const factory BuildAppBar() = _$BuildAppBarImpl<T>;
}

/// @nodoc
abstract class _$$GetUsersLoadingImplCopyWith<T, $Res> {
  factory _$$GetUsersLoadingImplCopyWith(_$GetUsersLoadingImpl<T> value,
          $Res Function(_$GetUsersLoadingImpl<T>) then) =
      __$$GetUsersLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetUsersLoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$GetUsersLoadingImpl<T>>
    implements _$$GetUsersLoadingImplCopyWith<T, $Res> {
  __$$GetUsersLoadingImplCopyWithImpl(_$GetUsersLoadingImpl<T> _value,
      $Res Function(_$GetUsersLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUsersLoadingImpl<T> implements GetUsersLoading<T> {
  const _$GetUsersLoadingImpl();

  @override
  String toString() {
    return 'SearchState<$T>.getUsersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUsersLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) {
    return getUsersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) {
    return getUsersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (getUsersLoading != null) {
      return getUsersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) {
    return getUsersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) {
    return getUsersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (getUsersLoading != null) {
      return getUsersLoading(this);
    }
    return orElse();
  }
}

abstract class GetUsersLoading<T> implements SearchState<T> {
  const factory GetUsersLoading() = _$GetUsersLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetUsersErrorImplCopyWith<T, $Res> {
  factory _$$GetUsersErrorImplCopyWith(_$GetUsersErrorImpl<T> value,
          $Res Function(_$GetUsersErrorImpl<T>) then) =
      __$$GetUsersErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetUsersErrorImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$GetUsersErrorImpl<T>>
    implements _$$GetUsersErrorImplCopyWith<T, $Res> {
  __$$GetUsersErrorImplCopyWithImpl(_$GetUsersErrorImpl<T> _value,
      $Res Function(_$GetUsersErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetUsersErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUsersErrorImpl<T> implements GetUsersError<T> {
  const _$GetUsersErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState<$T>.getUsersError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersErrorImplCopyWith<T, _$GetUsersErrorImpl<T>> get copyWith =>
      __$$GetUsersErrorImplCopyWithImpl<T, _$GetUsersErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) {
    return getUsersError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) {
    return getUsersError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (getUsersError != null) {
      return getUsersError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) {
    return getUsersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) {
    return getUsersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (getUsersError != null) {
      return getUsersError(this);
    }
    return orElse();
  }
}

abstract class GetUsersError<T> implements SearchState<T> {
  const factory GetUsersError({required final String error}) =
      _$GetUsersErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetUsersErrorImplCopyWith<T, _$GetUsersErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersSuccessImplCopyWith<T, $Res> {
  factory _$$GetUsersSuccessImplCopyWith(_$GetUsersSuccessImpl<T> value,
          $Res Function(_$GetUsersSuccessImpl<T>) then) =
      __$$GetUsersSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({UsersResponse users});
}

/// @nodoc
class __$$GetUsersSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$GetUsersSuccessImpl<T>>
    implements _$$GetUsersSuccessImplCopyWith<T, $Res> {
  __$$GetUsersSuccessImplCopyWithImpl(_$GetUsersSuccessImpl<T> _value,
      $Res Function(_$GetUsersSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$GetUsersSuccessImpl<T>(
      null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UsersResponse,
    ));
  }
}

/// @nodoc

class _$GetUsersSuccessImpl<T> implements GetUsersSuccess<T> {
  const _$GetUsersSuccessImpl(this.users);

  @override
  final UsersResponse users;

  @override
  String toString() {
    return 'SearchState<$T>.getUsersSuccess(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersSuccessImpl<T> &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersSuccessImplCopyWith<T, _$GetUsersSuccessImpl<T>> get copyWith =>
      __$$GetUsersSuccessImplCopyWithImpl<T, _$GetUsersSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) {
    return getUsersSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) {
    return getUsersSuccess?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (getUsersSuccess != null) {
      return getUsersSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) {
    return getUsersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) {
    return getUsersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (getUsersSuccess != null) {
      return getUsersSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUsersSuccess<T> implements SearchState<T> {
  const factory GetUsersSuccess(final UsersResponse users) =
      _$GetUsersSuccessImpl<T>;

  UsersResponse get users;
  @JsonKey(ignore: true)
  _$$GetUsersSuccessImplCopyWith<T, _$GetUsersSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterUserSuccessImplCopyWith<T, $Res> {
  factory _$$FilterUserSuccessImplCopyWith(_$FilterUserSuccessImpl<T> value,
          $Res Function(_$FilterUserSuccessImpl<T>) then) =
      __$$FilterUserSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<UserData> usersFiltered});
}

/// @nodoc
class __$$FilterUserSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$FilterUserSuccessImpl<T>>
    implements _$$FilterUserSuccessImplCopyWith<T, $Res> {
  __$$FilterUserSuccessImplCopyWithImpl(_$FilterUserSuccessImpl<T> _value,
      $Res Function(_$FilterUserSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersFiltered = null,
  }) {
    return _then(_$FilterUserSuccessImpl<T>(
      null == usersFiltered
          ? _value._usersFiltered
          : usersFiltered // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
    ));
  }
}

/// @nodoc

class _$FilterUserSuccessImpl<T> implements FilterUserSuccess<T> {
  const _$FilterUserSuccessImpl(final List<UserData> usersFiltered)
      : _usersFiltered = usersFiltered;

  final List<UserData> _usersFiltered;
  @override
  List<UserData> get usersFiltered {
    if (_usersFiltered is EqualUnmodifiableListView) return _usersFiltered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersFiltered);
  }

  @override
  String toString() {
    return 'SearchState<$T>.filterUserSuccess(usersFiltered: $usersFiltered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterUserSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._usersFiltered, _usersFiltered));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_usersFiltered));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterUserSuccessImplCopyWith<T, _$FilterUserSuccessImpl<T>>
      get copyWith =>
          __$$FilterUserSuccessImplCopyWithImpl<T, _$FilterUserSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buildAppBar,
    required TResult Function() getUsersLoading,
    required TResult Function(String error) getUsersError,
    required TResult Function(UsersResponse users) getUsersSuccess,
    required TResult Function(List<UserData> usersFiltered) filterUserSuccess,
  }) {
    return filterUserSuccess(usersFiltered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buildAppBar,
    TResult? Function()? getUsersLoading,
    TResult? Function(String error)? getUsersError,
    TResult? Function(UsersResponse users)? getUsersSuccess,
    TResult? Function(List<UserData> usersFiltered)? filterUserSuccess,
  }) {
    return filterUserSuccess?.call(usersFiltered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buildAppBar,
    TResult Function()? getUsersLoading,
    TResult Function(String error)? getUsersError,
    TResult Function(UsersResponse users)? getUsersSuccess,
    TResult Function(List<UserData> usersFiltered)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (filterUserSuccess != null) {
      return filterUserSuccess(usersFiltered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BuildAppBar<T> value) buildAppBar,
    required TResult Function(GetUsersLoading<T> value) getUsersLoading,
    required TResult Function(GetUsersError<T> value) getUsersError,
    required TResult Function(GetUsersSuccess<T> value) getUsersSuccess,
    required TResult Function(FilterUserSuccess<T> value) filterUserSuccess,
  }) {
    return filterUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BuildAppBar<T> value)? buildAppBar,
    TResult? Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult? Function(GetUsersError<T> value)? getUsersError,
    TResult? Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult? Function(FilterUserSuccess<T> value)? filterUserSuccess,
  }) {
    return filterUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BuildAppBar<T> value)? buildAppBar,
    TResult Function(GetUsersLoading<T> value)? getUsersLoading,
    TResult Function(GetUsersError<T> value)? getUsersError,
    TResult Function(GetUsersSuccess<T> value)? getUsersSuccess,
    TResult Function(FilterUserSuccess<T> value)? filterUserSuccess,
    required TResult orElse(),
  }) {
    if (filterUserSuccess != null) {
      return filterUserSuccess(this);
    }
    return orElse();
  }
}

abstract class FilterUserSuccess<T> implements SearchState<T> {
  const factory FilterUserSuccess(final List<UserData> usersFiltered) =
      _$FilterUserSuccessImpl<T>;

  List<UserData> get usersFiltered;
  @JsonKey(ignore: true)
  _$$FilterUserSuccessImplCopyWith<T, _$FilterUserSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
