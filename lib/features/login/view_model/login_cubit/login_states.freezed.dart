// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(UserCredential user) loginSuccessState,
    required TResult Function(String error) loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(UserCredential user)? loginSuccessState,
    TResult? Function(String error)? loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(UserCredential user)? loginSuccessState,
    TResult Function(String error)? loginErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatesCopyWith<T, $Res> {
  factory $LoginStatesCopyWith(
          LoginStates<T> value, $Res Function(LoginStates<T>) then) =
      _$LoginStatesCopyWithImpl<T, $Res, LoginStates<T>>;
}

/// @nodoc
class _$LoginStatesCopyWithImpl<T, $Res, $Val extends LoginStates<T>>
    implements $LoginStatesCopyWith<T, $Res> {
  _$LoginStatesCopyWithImpl(this._value, this._then);

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
    extends _$LoginStatesCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'LoginStates<$T>.initial()';
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
    required TResult Function() loginLoadingState,
    required TResult Function(UserCredential user) loginSuccessState,
    required TResult Function(String error) loginErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(UserCredential user)? loginSuccessState,
    TResult? Function(String error)? loginErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(UserCredential user)? loginSuccessState,
    TResult Function(String error)? loginErrorState,
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
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginStates<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<T, $Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl<T> value,
          $Res Function(_$LoginLoadingStateImpl<T>) then) =
      __$$LoginLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$LoginLoadingStateImpl<T>>
    implements _$$LoginLoadingStateImplCopyWith<T, $Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl<T> _value,
      $Res Function(_$LoginLoadingStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingStateImpl<T> implements LoginLoadingState<T> {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'LoginStates<$T>.loginLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(UserCredential user) loginSuccessState,
    required TResult Function(String error) loginErrorState,
  }) {
    return loginLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(UserCredential user)? loginSuccessState,
    TResult? Function(String error)? loginErrorState,
  }) {
    return loginLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(UserCredential user)? loginSuccessState,
    TResult Function(String error)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return loginLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return loginLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState<T> implements LoginStates<T> {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<T, $Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl<T> value,
          $Res Function(_$LoginSuccessStateImpl<T>) then) =
      __$$LoginSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({UserCredential user});
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$LoginSuccessStateImpl<T>>
    implements _$$LoginSuccessStateImplCopyWith<T, $Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl<T> _value,
      $Res Function(_$LoginSuccessStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccessStateImpl<T>(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$LoginSuccessStateImpl<T> implements LoginSuccessState<T> {
  const _$LoginSuccessStateImpl(this.user);

  @override
  final UserCredential user;

  @override
  String toString() {
    return 'LoginStates<$T>.loginSuccessState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessStateImpl<T> &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessStateImplCopyWith<T, _$LoginSuccessStateImpl<T>>
      get copyWith =>
          __$$LoginSuccessStateImplCopyWithImpl<T, _$LoginSuccessStateImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(UserCredential user) loginSuccessState,
    required TResult Function(String error) loginErrorState,
  }) {
    return loginSuccessState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(UserCredential user)? loginSuccessState,
    TResult? Function(String error)? loginErrorState,
  }) {
    return loginSuccessState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(UserCredential user)? loginSuccessState,
    TResult Function(String error)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginSuccessState != null) {
      return loginSuccessState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return loginSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return loginSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginSuccessState != null) {
      return loginSuccessState(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState<T> implements LoginStates<T> {
  const factory LoginSuccessState(final UserCredential user) =
      _$LoginSuccessStateImpl<T>;

  UserCredential get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessStateImplCopyWith<T, _$LoginSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorStateImplCopyWith<T, $Res> {
  factory _$$LoginErrorStateImplCopyWith(_$LoginErrorStateImpl<T> value,
          $Res Function(_$LoginErrorStateImpl<T>) then) =
      __$$LoginErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginErrorStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$LoginErrorStateImpl<T>>
    implements _$$LoginErrorStateImplCopyWith<T, $Res> {
  __$$LoginErrorStateImplCopyWithImpl(_$LoginErrorStateImpl<T> _value,
      $Res Function(_$LoginErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginErrorStateImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorStateImpl<T> implements LoginErrorState<T> {
  const _$LoginErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginStates<$T>.loginErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorStateImplCopyWith<T, _$LoginErrorStateImpl<T>> get copyWith =>
      __$$LoginErrorStateImplCopyWithImpl<T, _$LoginErrorStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(UserCredential user) loginSuccessState,
    required TResult Function(String error) loginErrorState,
  }) {
    return loginErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(UserCredential user)? loginSuccessState,
    TResult? Function(String error)? loginErrorState,
  }) {
    return loginErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(UserCredential user)? loginSuccessState,
    TResult Function(String error)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginErrorState != null) {
      return loginErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return loginErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return loginErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginErrorState != null) {
      return loginErrorState(this);
    }
    return orElse();
  }
}

abstract class LoginErrorState<T> implements LoginStates<T> {
  const factory LoginErrorState({required final String error}) =
      _$LoginErrorStateImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$LoginErrorStateImplCopyWith<T, _$LoginErrorStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
