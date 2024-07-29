// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<T, $Res> {
  factory $RoomStateCopyWith(
          RoomState<T> value, $Res Function(RoomState<T>) then) =
      _$RoomStateCopyWithImpl<T, $Res, RoomState<T>>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<T, $Res, $Val extends RoomState<T>>
    implements $RoomStateCopyWith<T, $Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

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
    extends _$RoomStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'RoomState<$T>.initial()';
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
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
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
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RoomState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$GetRoomsLoadingImplCopyWith<T, $Res> {
  factory _$$GetRoomsLoadingImplCopyWith(_$GetRoomsLoadingImpl<T> value,
          $Res Function(_$GetRoomsLoadingImpl<T>) then) =
      __$$GetRoomsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetRoomsLoadingImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomsLoadingImpl<T>>
    implements _$$GetRoomsLoadingImplCopyWith<T, $Res> {
  __$$GetRoomsLoadingImplCopyWithImpl(_$GetRoomsLoadingImpl<T> _value,
      $Res Function(_$GetRoomsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoomsLoadingImpl<T> implements GetRoomsLoading<T> {
  const _$GetRoomsLoadingImpl();

  @override
  String toString() {
    return 'RoomState<$T>.getRoomsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRoomsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsLoading != null) {
      return getRoomsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsLoading != null) {
      return getRoomsLoading(this);
    }
    return orElse();
  }
}

abstract class GetRoomsLoading<T> implements RoomState<T> {
  const factory GetRoomsLoading() = _$GetRoomsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetRoomsSuccessImplCopyWith<T, $Res> {
  factory _$$GetRoomsSuccessImplCopyWith(_$GetRoomsSuccessImpl<T> value,
          $Res Function(_$GetRoomsSuccessImpl<T>) then) =
      __$$GetRoomsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({RoomsResponse rooms});
}

/// @nodoc
class __$$GetRoomsSuccessImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomsSuccessImpl<T>>
    implements _$$GetRoomsSuccessImplCopyWith<T, $Res> {
  __$$GetRoomsSuccessImplCopyWithImpl(_$GetRoomsSuccessImpl<T> _value,
      $Res Function(_$GetRoomsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$GetRoomsSuccessImpl<T>(
      null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsResponse,
    ));
  }
}

/// @nodoc

class _$GetRoomsSuccessImpl<T> implements GetRoomsSuccess<T> {
  const _$GetRoomsSuccessImpl(this.rooms);

  @override
  final RoomsResponse rooms;

  @override
  String toString() {
    return 'RoomState<$T>.getRoomsSuccess(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomsSuccessImpl<T> &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoomsSuccessImplCopyWith<T, _$GetRoomsSuccessImpl<T>> get copyWith =>
      __$$GetRoomsSuccessImplCopyWithImpl<T, _$GetRoomsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomsSuccess(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomsSuccess?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsSuccess != null) {
      return getRoomsSuccess(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsSuccess != null) {
      return getRoomsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetRoomsSuccess<T> implements RoomState<T> {
  const factory GetRoomsSuccess(final RoomsResponse rooms) =
      _$GetRoomsSuccessImpl<T>;

  RoomsResponse get rooms;
  @JsonKey(ignore: true)
  _$$GetRoomsSuccessImplCopyWith<T, _$GetRoomsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoomsErrorImplCopyWith<T, $Res> {
  factory _$$GetRoomsErrorImplCopyWith(_$GetRoomsErrorImpl<T> value,
          $Res Function(_$GetRoomsErrorImpl<T>) then) =
      __$$GetRoomsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetRoomsErrorImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomsErrorImpl<T>>
    implements _$$GetRoomsErrorImplCopyWith<T, $Res> {
  __$$GetRoomsErrorImplCopyWithImpl(_$GetRoomsErrorImpl<T> _value,
      $Res Function(_$GetRoomsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetRoomsErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRoomsErrorImpl<T> implements GetRoomsError<T> {
  const _$GetRoomsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RoomState<$T>.getRoomsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoomsErrorImplCopyWith<T, _$GetRoomsErrorImpl<T>> get copyWith =>
      __$$GetRoomsErrorImplCopyWithImpl<T, _$GetRoomsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsError != null) {
      return getRoomsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsError != null) {
      return getRoomsError(this);
    }
    return orElse();
  }
}

abstract class GetRoomsError<T> implements RoomState<T> {
  const factory GetRoomsError({required final String error}) =
      _$GetRoomsErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetRoomsErrorImplCopyWith<T, _$GetRoomsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoomsFilteredSuccessImplCopyWith<T, $Res> {
  factory _$$GetRoomsFilteredSuccessImplCopyWith(
          _$GetRoomsFilteredSuccessImpl<T> value,
          $Res Function(_$GetRoomsFilteredSuccessImpl<T>) then) =
      __$$GetRoomsFilteredSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<RoomsData> roomsList});
}

/// @nodoc
class __$$GetRoomsFilteredSuccessImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomsFilteredSuccessImpl<T>>
    implements _$$GetRoomsFilteredSuccessImplCopyWith<T, $Res> {
  __$$GetRoomsFilteredSuccessImplCopyWithImpl(
      _$GetRoomsFilteredSuccessImpl<T> _value,
      $Res Function(_$GetRoomsFilteredSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomsList = null,
  }) {
    return _then(_$GetRoomsFilteredSuccessImpl<T>(
      null == roomsList
          ? _value._roomsList
          : roomsList // ignore: cast_nullable_to_non_nullable
              as List<RoomsData>,
    ));
  }
}

/// @nodoc

class _$GetRoomsFilteredSuccessImpl<T> implements GetRoomsFilteredSuccess<T> {
  const _$GetRoomsFilteredSuccessImpl(final List<RoomsData> roomsList)
      : _roomsList = roomsList;

  final List<RoomsData> _roomsList;
  @override
  List<RoomsData> get roomsList {
    if (_roomsList is EqualUnmodifiableListView) return _roomsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomsList);
  }

  @override
  String toString() {
    return 'RoomState<$T>.getRoomsFilteredSuccess(roomsList: $roomsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomsFilteredSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._roomsList, _roomsList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_roomsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoomsFilteredSuccessImplCopyWith<T, _$GetRoomsFilteredSuccessImpl<T>>
      get copyWith => __$$GetRoomsFilteredSuccessImplCopyWithImpl<T,
          _$GetRoomsFilteredSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomsFilteredSuccess(roomsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomsFilteredSuccess?.call(roomsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsFilteredSuccess != null) {
      return getRoomsFilteredSuccess(roomsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomsFilteredSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomsFilteredSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomsFilteredSuccess != null) {
      return getRoomsFilteredSuccess(this);
    }
    return orElse();
  }
}

abstract class GetRoomsFilteredSuccess<T> implements RoomState<T> {
  const factory GetRoomsFilteredSuccess(final List<RoomsData> roomsList) =
      _$GetRoomsFilteredSuccessImpl<T>;

  List<RoomsData> get roomsList;
  @JsonKey(ignore: true)
  _$$GetRoomsFilteredSuccessImplCopyWith<T, _$GetRoomsFilteredSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRoomsLoadingImplCopyWith<T, $Res> {
  factory _$$CreateRoomsLoadingImplCopyWith(_$CreateRoomsLoadingImpl<T> value,
          $Res Function(_$CreateRoomsLoadingImpl<T>) then) =
      __$$CreateRoomsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CreateRoomsLoadingImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$CreateRoomsLoadingImpl<T>>
    implements _$$CreateRoomsLoadingImplCopyWith<T, $Res> {
  __$$CreateRoomsLoadingImplCopyWithImpl(_$CreateRoomsLoadingImpl<T> _value,
      $Res Function(_$CreateRoomsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRoomsLoadingImpl<T> implements CreateRoomsLoading<T> {
  const _$CreateRoomsLoadingImpl();

  @override
  String toString() {
    return 'RoomState<$T>.createRoomsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return createRoomsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return createRoomsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (createRoomsLoading != null) {
      return createRoomsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return createRoomsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return createRoomsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (createRoomsLoading != null) {
      return createRoomsLoading(this);
    }
    return orElse();
  }
}

abstract class CreateRoomsLoading<T> implements RoomState<T> {
  const factory CreateRoomsLoading() = _$CreateRoomsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CreateRoomsSuccessImplCopyWith<T, $Res> {
  factory _$$CreateRoomsSuccessImplCopyWith(_$CreateRoomsSuccessImpl<T> value,
          $Res Function(_$CreateRoomsSuccessImpl<T>) then) =
      __$$CreateRoomsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateRoomsSuccessImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$CreateRoomsSuccessImpl<T>>
    implements _$$CreateRoomsSuccessImplCopyWith<T, $Res> {
  __$$CreateRoomsSuccessImplCopyWithImpl(_$CreateRoomsSuccessImpl<T> _value,
      $Res Function(_$CreateRoomsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateRoomsSuccessImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRoomsSuccessImpl<T> implements CreateRoomsSuccess<T> {
  const _$CreateRoomsSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RoomState<$T>.createRoomsSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomsSuccessImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoomsSuccessImplCopyWith<T, _$CreateRoomsSuccessImpl<T>>
      get copyWith => __$$CreateRoomsSuccessImplCopyWithImpl<T,
          _$CreateRoomsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return createRoomsSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return createRoomsSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (createRoomsSuccess != null) {
      return createRoomsSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return createRoomsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return createRoomsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (createRoomsSuccess != null) {
      return createRoomsSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateRoomsSuccess<T> implements RoomState<T> {
  const factory CreateRoomsSuccess(final String message) =
      _$CreateRoomsSuccessImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$CreateRoomsSuccessImplCopyWith<T, _$CreateRoomsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRoomsErrorImplCopyWith<T, $Res> {
  factory _$$CreateRoomsErrorImplCopyWith(_$CreateRoomsErrorImpl<T> value,
          $Res Function(_$CreateRoomsErrorImpl<T>) then) =
      __$$CreateRoomsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CreateRoomsErrorImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$CreateRoomsErrorImpl<T>>
    implements _$$CreateRoomsErrorImplCopyWith<T, $Res> {
  __$$CreateRoomsErrorImplCopyWithImpl(_$CreateRoomsErrorImpl<T> _value,
      $Res Function(_$CreateRoomsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreateRoomsErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRoomsErrorImpl<T> implements CreateRoomsError<T> {
  const _$CreateRoomsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RoomState<$T>.createRoomsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoomsErrorImplCopyWith<T, _$CreateRoomsErrorImpl<T>> get copyWith =>
      __$$CreateRoomsErrorImplCopyWithImpl<T, _$CreateRoomsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return createRoomsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return createRoomsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (createRoomsError != null) {
      return createRoomsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return createRoomsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return createRoomsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (createRoomsError != null) {
      return createRoomsError(this);
    }
    return orElse();
  }
}

abstract class CreateRoomsError<T> implements RoomState<T> {
  const factory CreateRoomsError({required final String error}) =
      _$CreateRoomsErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$CreateRoomsErrorImplCopyWith<T, _$CreateRoomsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoomByMembersLoadingImplCopyWith<T, $Res> {
  factory _$$GetRoomByMembersLoadingImplCopyWith(
          _$GetRoomByMembersLoadingImpl<T> value,
          $Res Function(_$GetRoomByMembersLoadingImpl<T>) then) =
      __$$GetRoomByMembersLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetRoomByMembersLoadingImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomByMembersLoadingImpl<T>>
    implements _$$GetRoomByMembersLoadingImplCopyWith<T, $Res> {
  __$$GetRoomByMembersLoadingImplCopyWithImpl(
      _$GetRoomByMembersLoadingImpl<T> _value,
      $Res Function(_$GetRoomByMembersLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoomByMembersLoadingImpl<T> implements _GetRoomByMembersLoading<T> {
  const _$GetRoomByMembersLoadingImpl();

  @override
  String toString() {
    return 'RoomState<$T>.getRoomByMembersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomByMembersLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomByMembersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomByMembersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomByMembersLoading != null) {
      return getRoomByMembersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomByMembersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomByMembersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomByMembersLoading != null) {
      return getRoomByMembersLoading(this);
    }
    return orElse();
  }
}

abstract class _GetRoomByMembersLoading<T> implements RoomState<T> {
  const factory _GetRoomByMembersLoading() = _$GetRoomByMembersLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetRoomByMembersSuccessImplCopyWith<T, $Res> {
  factory _$$GetRoomByMembersSuccessImplCopyWith(
          _$GetRoomByMembersSuccessImpl<T> value,
          $Res Function(_$GetRoomByMembersSuccessImpl<T>) then) =
      __$$GetRoomByMembersSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({RoomsData room});
}

/// @nodoc
class __$$GetRoomByMembersSuccessImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomByMembersSuccessImpl<T>>
    implements _$$GetRoomByMembersSuccessImplCopyWith<T, $Res> {
  __$$GetRoomByMembersSuccessImplCopyWithImpl(
      _$GetRoomByMembersSuccessImpl<T> _value,
      $Res Function(_$GetRoomByMembersSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$GetRoomByMembersSuccessImpl<T>(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomsData,
    ));
  }
}

/// @nodoc

class _$GetRoomByMembersSuccessImpl<T> implements _GetRoomByMembersSuccess<T> {
  const _$GetRoomByMembersSuccessImpl(this.room);

  @override
  final RoomsData room;

  @override
  String toString() {
    return 'RoomState<$T>.getRoomByMembersSuccess(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomByMembersSuccessImpl<T> &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoomByMembersSuccessImplCopyWith<T, _$GetRoomByMembersSuccessImpl<T>>
      get copyWith => __$$GetRoomByMembersSuccessImplCopyWithImpl<T,
          _$GetRoomByMembersSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomByMembersSuccess(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomByMembersSuccess?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomByMembersSuccess != null) {
      return getRoomByMembersSuccess(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomByMembersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomByMembersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomByMembersSuccess != null) {
      return getRoomByMembersSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetRoomByMembersSuccess<T> implements RoomState<T> {
  const factory _GetRoomByMembersSuccess(final RoomsData room) =
      _$GetRoomByMembersSuccessImpl<T>;

  RoomsData get room;
  @JsonKey(ignore: true)
  _$$GetRoomByMembersSuccessImplCopyWith<T, _$GetRoomByMembersSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoomByMembersErrorImplCopyWith<T, $Res> {
  factory _$$GetRoomByMembersErrorImplCopyWith(
          _$GetRoomByMembersErrorImpl<T> value,
          $Res Function(_$GetRoomByMembersErrorImpl<T>) then) =
      __$$GetRoomByMembersErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetRoomByMembersErrorImplCopyWithImpl<T, $Res>
    extends _$RoomStateCopyWithImpl<T, $Res, _$GetRoomByMembersErrorImpl<T>>
    implements _$$GetRoomByMembersErrorImplCopyWith<T, $Res> {
  __$$GetRoomByMembersErrorImplCopyWithImpl(
      _$GetRoomByMembersErrorImpl<T> _value,
      $Res Function(_$GetRoomByMembersErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetRoomByMembersErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRoomByMembersErrorImpl<T> implements _GetRoomByMembersError<T> {
  const _$GetRoomByMembersErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RoomState<$T>.getRoomByMembersError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoomByMembersErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoomByMembersErrorImplCopyWith<T, _$GetRoomByMembersErrorImpl<T>>
      get copyWith => __$$GetRoomByMembersErrorImplCopyWithImpl<T,
          _$GetRoomByMembersErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRoomsLoading,
    required TResult Function(RoomsResponse rooms) getRoomsSuccess,
    required TResult Function(String error) getRoomsError,
    required TResult Function(List<RoomsData> roomsList)
        getRoomsFilteredSuccess,
    required TResult Function() createRoomsLoading,
    required TResult Function(String message) createRoomsSuccess,
    required TResult Function(String error) createRoomsError,
    required TResult Function() getRoomByMembersLoading,
    required TResult Function(RoomsData room) getRoomByMembersSuccess,
    required TResult Function(String error) getRoomByMembersError,
  }) {
    return getRoomByMembersError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRoomsLoading,
    TResult? Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult? Function(String error)? getRoomsError,
    TResult? Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult? Function()? createRoomsLoading,
    TResult? Function(String message)? createRoomsSuccess,
    TResult? Function(String error)? createRoomsError,
    TResult? Function()? getRoomByMembersLoading,
    TResult? Function(RoomsData room)? getRoomByMembersSuccess,
    TResult? Function(String error)? getRoomByMembersError,
  }) {
    return getRoomByMembersError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRoomsLoading,
    TResult Function(RoomsResponse rooms)? getRoomsSuccess,
    TResult Function(String error)? getRoomsError,
    TResult Function(List<RoomsData> roomsList)? getRoomsFilteredSuccess,
    TResult Function()? createRoomsLoading,
    TResult Function(String message)? createRoomsSuccess,
    TResult Function(String error)? createRoomsError,
    TResult Function()? getRoomByMembersLoading,
    TResult Function(RoomsData room)? getRoomByMembersSuccess,
    TResult Function(String error)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomByMembersError != null) {
      return getRoomByMembersError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetRoomsLoading<T> value) getRoomsLoading,
    required TResult Function(GetRoomsSuccess<T> value) getRoomsSuccess,
    required TResult Function(GetRoomsError<T> value) getRoomsError,
    required TResult Function(GetRoomsFilteredSuccess<T> value)
        getRoomsFilteredSuccess,
    required TResult Function(CreateRoomsLoading<T> value) createRoomsLoading,
    required TResult Function(CreateRoomsSuccess<T> value) createRoomsSuccess,
    required TResult Function(CreateRoomsError<T> value) createRoomsError,
    required TResult Function(_GetRoomByMembersLoading<T> value)
        getRoomByMembersLoading,
    required TResult Function(_GetRoomByMembersSuccess<T> value)
        getRoomByMembersSuccess,
    required TResult Function(_GetRoomByMembersError<T> value)
        getRoomByMembersError,
  }) {
    return getRoomByMembersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult? Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult? Function(GetRoomsError<T> value)? getRoomsError,
    TResult? Function(GetRoomsFilteredSuccess<T> value)?
        getRoomsFilteredSuccess,
    TResult? Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult? Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult? Function(CreateRoomsError<T> value)? createRoomsError,
    TResult? Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult? Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult? Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
  }) {
    return getRoomByMembersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetRoomsLoading<T> value)? getRoomsLoading,
    TResult Function(GetRoomsSuccess<T> value)? getRoomsSuccess,
    TResult Function(GetRoomsError<T> value)? getRoomsError,
    TResult Function(GetRoomsFilteredSuccess<T> value)? getRoomsFilteredSuccess,
    TResult Function(CreateRoomsLoading<T> value)? createRoomsLoading,
    TResult Function(CreateRoomsSuccess<T> value)? createRoomsSuccess,
    TResult Function(CreateRoomsError<T> value)? createRoomsError,
    TResult Function(_GetRoomByMembersLoading<T> value)?
        getRoomByMembersLoading,
    TResult Function(_GetRoomByMembersSuccess<T> value)?
        getRoomByMembersSuccess,
    TResult Function(_GetRoomByMembersError<T> value)? getRoomByMembersError,
    required TResult orElse(),
  }) {
    if (getRoomByMembersError != null) {
      return getRoomByMembersError(this);
    }
    return orElse();
  }
}

abstract class _GetRoomByMembersError<T> implements RoomState<T> {
  const factory _GetRoomByMembersError({required final String error}) =
      _$GetRoomByMembersErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetRoomByMembersErrorImplCopyWith<T, _$GetRoomByMembersErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
