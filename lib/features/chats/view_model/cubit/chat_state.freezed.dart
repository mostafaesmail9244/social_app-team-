// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<T, $Res> {
  factory $ChatStateCopyWith(
          ChatState<T> value, $Res Function(ChatState<T>) then) =
      _$ChatStateCopyWithImpl<T, $Res, ChatState<T>>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<T, $Res, $Val extends ChatState<T>>
    implements $ChatStateCopyWith<T, $Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'ChatState<$T>.initial()';
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
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
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
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ChatState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$GetUsersLoadingStateImplCopyWith<T, $Res> {
  factory _$$GetUsersLoadingStateImplCopyWith(
          _$GetUsersLoadingStateImpl<T> value,
          $Res Function(_$GetUsersLoadingStateImpl<T>) then) =
      __$$GetUsersLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetUsersLoadingStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$GetUsersLoadingStateImpl<T>>
    implements _$$GetUsersLoadingStateImplCopyWith<T, $Res> {
  __$$GetUsersLoadingStateImplCopyWithImpl(_$GetUsersLoadingStateImpl<T> _value,
      $Res Function(_$GetUsersLoadingStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUsersLoadingStateImpl<T> implements GetUsersLoadingState<T> {
  const _$GetUsersLoadingStateImpl();

  @override
  String toString() {
    return 'ChatState<$T>.getUsersLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return getUsersLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return getUsersLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getUsersLoadingState != null) {
      return getUsersLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return getUsersLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return getUsersLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getUsersLoadingState != null) {
      return getUsersLoadingState(this);
    }
    return orElse();
  }
}

abstract class GetUsersLoadingState<T> implements ChatState<T> {
  const factory GetUsersLoadingState() = _$GetUsersLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$GetUsersSuccessStateImplCopyWith<T, $Res> {
  factory _$$GetUsersSuccessStateImplCopyWith(
          _$GetUsersSuccessStateImpl<T> value,
          $Res Function(_$GetUsersSuccessStateImpl<T>) then) =
      __$$GetUsersSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<UserResponse> users});
}

/// @nodoc
class __$$GetUsersSuccessStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$GetUsersSuccessStateImpl<T>>
    implements _$$GetUsersSuccessStateImplCopyWith<T, $Res> {
  __$$GetUsersSuccessStateImplCopyWithImpl(_$GetUsersSuccessStateImpl<T> _value,
      $Res Function(_$GetUsersSuccessStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$GetUsersSuccessStateImpl<T>(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

/// @nodoc

class _$GetUsersSuccessStateImpl<T> implements GetUsersSuccessState<T> {
  const _$GetUsersSuccessStateImpl(final List<UserResponse> users)
      : _users = users;

  final List<UserResponse> _users;
  @override
  List<UserResponse> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ChatState<$T>.getUsersSuccessState(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersSuccessStateImpl<T> &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersSuccessStateImplCopyWith<T, _$GetUsersSuccessStateImpl<T>>
      get copyWith => __$$GetUsersSuccessStateImplCopyWithImpl<T,
          _$GetUsersSuccessStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return getUsersSuccessState(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return getUsersSuccessState?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getUsersSuccessState != null) {
      return getUsersSuccessState(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return getUsersSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return getUsersSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getUsersSuccessState != null) {
      return getUsersSuccessState(this);
    }
    return orElse();
  }
}

abstract class GetUsersSuccessState<T> implements ChatState<T> {
  const factory GetUsersSuccessState(final List<UserResponse> users) =
      _$GetUsersSuccessStateImpl<T>;

  List<UserResponse> get users;
  @JsonKey(ignore: true)
  _$$GetUsersSuccessStateImplCopyWith<T, _$GetUsersSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersErrorStateImplCopyWith<T, $Res> {
  factory _$$GetUsersErrorStateImplCopyWith(_$GetUsersErrorStateImpl<T> value,
          $Res Function(_$GetUsersErrorStateImpl<T>) then) =
      __$$GetUsersErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetUsersErrorStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$GetUsersErrorStateImpl<T>>
    implements _$$GetUsersErrorStateImplCopyWith<T, $Res> {
  __$$GetUsersErrorStateImplCopyWithImpl(_$GetUsersErrorStateImpl<T> _value,
      $Res Function(_$GetUsersErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetUsersErrorStateImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUsersErrorStateImpl<T> implements GetUsersErrorState<T> {
  const _$GetUsersErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState<$T>.getUsersErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersErrorStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersErrorStateImplCopyWith<T, _$GetUsersErrorStateImpl<T>>
      get copyWith => __$$GetUsersErrorStateImplCopyWithImpl<T,
          _$GetUsersErrorStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return getUsersErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return getUsersErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getUsersErrorState != null) {
      return getUsersErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return getUsersErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return getUsersErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getUsersErrorState != null) {
      return getUsersErrorState(this);
    }
    return orElse();
  }
}

abstract class GetUsersErrorState<T> implements ChatState<T> {
  const factory GetUsersErrorState({required final String error}) =
      _$GetUsersErrorStateImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetUsersErrorStateImplCopyWith<T, _$GetUsersErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesSuccessStateImplCopyWith<T, $Res> {
  factory _$$GetMessagesSuccessStateImplCopyWith(
          _$GetMessagesSuccessStateImpl<T> value,
          $Res Function(_$GetMessagesSuccessStateImpl<T>) then) =
      __$$GetMessagesSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$GetMessagesSuccessStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$GetMessagesSuccessStateImpl<T>>
    implements _$$GetMessagesSuccessStateImplCopyWith<T, $Res> {
  __$$GetMessagesSuccessStateImplCopyWithImpl(
      _$GetMessagesSuccessStateImpl<T> _value,
      $Res Function(_$GetMessagesSuccessStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$GetMessagesSuccessStateImpl<T>(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$GetMessagesSuccessStateImpl<T> implements GetMessagesSuccessState<T> {
  const _$GetMessagesSuccessStateImpl(final List<MessageModel> messages)
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState<$T>.getMessagesSuccessState(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesSuccessStateImpl<T> &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesSuccessStateImplCopyWith<T, _$GetMessagesSuccessStateImpl<T>>
      get copyWith => __$$GetMessagesSuccessStateImplCopyWithImpl<T,
          _$GetMessagesSuccessStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return getMessagesSuccessState(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return getMessagesSuccessState?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getMessagesSuccessState != null) {
      return getMessagesSuccessState(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return getMessagesSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return getMessagesSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getMessagesSuccessState != null) {
      return getMessagesSuccessState(this);
    }
    return orElse();
  }
}

abstract class GetMessagesSuccessState<T> implements ChatState<T> {
  const factory GetMessagesSuccessState(final List<MessageModel> messages) =
      _$GetMessagesSuccessStateImpl<T>;

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  _$$GetMessagesSuccessStateImplCopyWith<T, _$GetMessagesSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesErrorStateImplCopyWith<T, $Res> {
  factory _$$GetMessagesErrorStateImplCopyWith(
          _$GetMessagesErrorStateImpl<T> value,
          $Res Function(_$GetMessagesErrorStateImpl<T>) then) =
      __$$GetMessagesErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetMessagesErrorStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$GetMessagesErrorStateImpl<T>>
    implements _$$GetMessagesErrorStateImplCopyWith<T, $Res> {
  __$$GetMessagesErrorStateImplCopyWithImpl(
      _$GetMessagesErrorStateImpl<T> _value,
      $Res Function(_$GetMessagesErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetMessagesErrorStateImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMessagesErrorStateImpl<T> implements GetMessagesErrorState<T> {
  const _$GetMessagesErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState<$T>.getMessagesErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesErrorStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesErrorStateImplCopyWith<T, _$GetMessagesErrorStateImpl<T>>
      get copyWith => __$$GetMessagesErrorStateImplCopyWithImpl<T,
          _$GetMessagesErrorStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return getMessagesErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return getMessagesErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getMessagesErrorState != null) {
      return getMessagesErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return getMessagesErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return getMessagesErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (getMessagesErrorState != null) {
      return getMessagesErrorState(this);
    }
    return orElse();
  }
}

abstract class GetMessagesErrorState<T> implements ChatState<T> {
  const factory GetMessagesErrorState({required final String error}) =
      _$GetMessagesErrorStateImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetMessagesErrorStateImplCopyWith<T, _$GetMessagesErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageSuccessStateImplCopyWith<T, $Res> {
  factory _$$SendMessageSuccessStateImplCopyWith(
          _$SendMessageSuccessStateImpl<T> value,
          $Res Function(_$SendMessageSuccessStateImpl<T>) then) =
      __$$SendMessageSuccessStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SendMessageSuccessStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$SendMessageSuccessStateImpl<T>>
    implements _$$SendMessageSuccessStateImplCopyWith<T, $Res> {
  __$$SendMessageSuccessStateImplCopyWithImpl(
      _$SendMessageSuccessStateImpl<T> _value,
      $Res Function(_$SendMessageSuccessStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendMessageSuccessStateImpl<T> implements SendMessageSuccessState<T> {
  const _$SendMessageSuccessStateImpl();

  @override
  String toString() {
    return 'ChatState<$T>.sendMessageSuccessState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageSuccessStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return sendMessageSuccessState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return sendMessageSuccessState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (sendMessageSuccessState != null) {
      return sendMessageSuccessState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return sendMessageSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return sendMessageSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (sendMessageSuccessState != null) {
      return sendMessageSuccessState(this);
    }
    return orElse();
  }
}

abstract class SendMessageSuccessState<T> implements ChatState<T> {
  const factory SendMessageSuccessState() = _$SendMessageSuccessStateImpl<T>;
}

/// @nodoc
abstract class _$$SendMessageErrorStateImplCopyWith<T, $Res> {
  factory _$$SendMessageErrorStateImplCopyWith(
          _$SendMessageErrorStateImpl<T> value,
          $Res Function(_$SendMessageErrorStateImpl<T>) then) =
      __$$SendMessageErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SendMessageErrorStateImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$SendMessageErrorStateImpl<T>>
    implements _$$SendMessageErrorStateImplCopyWith<T, $Res> {
  __$$SendMessageErrorStateImplCopyWithImpl(
      _$SendMessageErrorStateImpl<T> _value,
      $Res Function(_$SendMessageErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SendMessageErrorStateImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageErrorStateImpl<T> implements SendMessageErrorState<T> {
  const _$SendMessageErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState<$T>.sendMessageErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageErrorStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageErrorStateImplCopyWith<T, _$SendMessageErrorStateImpl<T>>
      get copyWith => __$$SendMessageErrorStateImplCopyWithImpl<T,
          _$SendMessageErrorStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUsersLoadingState,
    required TResult Function(List<UserResponse> users) getUsersSuccessState,
    required TResult Function(String error) getUsersErrorState,
    required TResult Function(List<MessageModel> messages)
        getMessagesSuccessState,
    required TResult Function(String error) getMessagesErrorState,
    required TResult Function() sendMessageSuccessState,
    required TResult Function(String error) sendMessageErrorState,
  }) {
    return sendMessageErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUsersLoadingState,
    TResult? Function(List<UserResponse> users)? getUsersSuccessState,
    TResult? Function(String error)? getUsersErrorState,
    TResult? Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult? Function(String error)? getMessagesErrorState,
    TResult? Function()? sendMessageSuccessState,
    TResult? Function(String error)? sendMessageErrorState,
  }) {
    return sendMessageErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUsersLoadingState,
    TResult Function(List<UserResponse> users)? getUsersSuccessState,
    TResult Function(String error)? getUsersErrorState,
    TResult Function(List<MessageModel> messages)? getMessagesSuccessState,
    TResult Function(String error)? getMessagesErrorState,
    TResult Function()? sendMessageSuccessState,
    TResult Function(String error)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (sendMessageErrorState != null) {
      return sendMessageErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetUsersLoadingState<T> value)
        getUsersLoadingState,
    required TResult Function(GetUsersSuccessState<T> value)
        getUsersSuccessState,
    required TResult Function(GetUsersErrorState<T> value) getUsersErrorState,
    required TResult Function(GetMessagesSuccessState<T> value)
        getMessagesSuccessState,
    required TResult Function(GetMessagesErrorState<T> value)
        getMessagesErrorState,
    required TResult Function(SendMessageSuccessState<T> value)
        sendMessageSuccessState,
    required TResult Function(SendMessageErrorState<T> value)
        sendMessageErrorState,
  }) {
    return sendMessageErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult? Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult? Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult? Function(GetMessagesSuccessState<T> value)?
        getMessagesSuccessState,
    TResult? Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult? Function(SendMessageSuccessState<T> value)?
        sendMessageSuccessState,
    TResult? Function(SendMessageErrorState<T> value)? sendMessageErrorState,
  }) {
    return sendMessageErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetUsersLoadingState<T> value)? getUsersLoadingState,
    TResult Function(GetUsersSuccessState<T> value)? getUsersSuccessState,
    TResult Function(GetUsersErrorState<T> value)? getUsersErrorState,
    TResult Function(GetMessagesSuccessState<T> value)? getMessagesSuccessState,
    TResult Function(GetMessagesErrorState<T> value)? getMessagesErrorState,
    TResult Function(SendMessageSuccessState<T> value)? sendMessageSuccessState,
    TResult Function(SendMessageErrorState<T> value)? sendMessageErrorState,
    required TResult orElse(),
  }) {
    if (sendMessageErrorState != null) {
      return sendMessageErrorState(this);
    }
    return orElse();
  }
}

abstract class SendMessageErrorState<T> implements ChatState<T> {
  const factory SendMessageErrorState({required final String error}) =
      _$SendMessageErrorStateImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SendMessageErrorStateImplCopyWith<T, _$SendMessageErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
