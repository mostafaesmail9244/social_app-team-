// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPostsStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPostsLoading,
    required TResult Function(PostsResponse postsResponse) getPostsSuccess,
    required TResult Function(String error) getPostsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPostsLoading,
    TResult? Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult? Function(String error)? getPostsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPostsLoading,
    TResult Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult Function(String error)? getPostsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetPostsLoading<T> value) getPostsLoading,
    required TResult Function(GetPostsSuccess<T> value) getPostsSuccess,
    required TResult Function(GetPostsError<T> value) getPostsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult? Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult? Function(GetPostsError<T> value)? getPostsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult Function(GetPostsError<T> value)? getPostsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsStatesCopyWith<T, $Res> {
  factory $GetPostsStatesCopyWith(
          GetPostsStates<T> value, $Res Function(GetPostsStates<T>) then) =
      _$GetPostsStatesCopyWithImpl<T, $Res, GetPostsStates<T>>;
}

/// @nodoc
class _$GetPostsStatesCopyWithImpl<T, $Res, $Val extends GetPostsStates<T>>
    implements $GetPostsStatesCopyWith<T, $Res> {
  _$GetPostsStatesCopyWithImpl(this._value, this._then);

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
    extends _$GetPostsStatesCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'GetPostsStates<$T>.initial()';
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
    required TResult Function() getPostsLoading,
    required TResult Function(PostsResponse postsResponse) getPostsSuccess,
    required TResult Function(String error) getPostsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPostsLoading,
    TResult? Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult? Function(String error)? getPostsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPostsLoading,
    TResult Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult Function(String error)? getPostsError,
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
    required TResult Function(GetPostsLoading<T> value) getPostsLoading,
    required TResult Function(GetPostsSuccess<T> value) getPostsSuccess,
    required TResult Function(GetPostsError<T> value) getPostsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult? Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult? Function(GetPostsError<T> value)? getPostsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult Function(GetPostsError<T> value)? getPostsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements GetPostsStates<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$GetPostsLoadingImplCopyWith<T, $Res> {
  factory _$$GetPostsLoadingImplCopyWith(_$GetPostsLoadingImpl<T> value,
          $Res Function(_$GetPostsLoadingImpl<T>) then) =
      __$$GetPostsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetPostsLoadingImplCopyWithImpl<T, $Res>
    extends _$GetPostsStatesCopyWithImpl<T, $Res, _$GetPostsLoadingImpl<T>>
    implements _$$GetPostsLoadingImplCopyWith<T, $Res> {
  __$$GetPostsLoadingImplCopyWithImpl(_$GetPostsLoadingImpl<T> _value,
      $Res Function(_$GetPostsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPostsLoadingImpl<T> implements GetPostsLoading<T> {
  const _$GetPostsLoadingImpl();

  @override
  String toString() {
    return 'GetPostsStates<$T>.getPostsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPostsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPostsLoading,
    required TResult Function(PostsResponse postsResponse) getPostsSuccess,
    required TResult Function(String error) getPostsError,
  }) {
    return getPostsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPostsLoading,
    TResult? Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult? Function(String error)? getPostsError,
  }) {
    return getPostsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPostsLoading,
    TResult Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult Function(String error)? getPostsError,
    required TResult orElse(),
  }) {
    if (getPostsLoading != null) {
      return getPostsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetPostsLoading<T> value) getPostsLoading,
    required TResult Function(GetPostsSuccess<T> value) getPostsSuccess,
    required TResult Function(GetPostsError<T> value) getPostsError,
  }) {
    return getPostsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult? Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult? Function(GetPostsError<T> value)? getPostsError,
  }) {
    return getPostsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult Function(GetPostsError<T> value)? getPostsError,
    required TResult orElse(),
  }) {
    if (getPostsLoading != null) {
      return getPostsLoading(this);
    }
    return orElse();
  }
}

abstract class GetPostsLoading<T> implements GetPostsStates<T> {
  const factory GetPostsLoading() = _$GetPostsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetPostsSuccessImplCopyWith<T, $Res> {
  factory _$$GetPostsSuccessImplCopyWith(_$GetPostsSuccessImpl<T> value,
          $Res Function(_$GetPostsSuccessImpl<T>) then) =
      __$$GetPostsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({PostsResponse postsResponse});
}

/// @nodoc
class __$$GetPostsSuccessImplCopyWithImpl<T, $Res>
    extends _$GetPostsStatesCopyWithImpl<T, $Res, _$GetPostsSuccessImpl<T>>
    implements _$$GetPostsSuccessImplCopyWith<T, $Res> {
  __$$GetPostsSuccessImplCopyWithImpl(_$GetPostsSuccessImpl<T> _value,
      $Res Function(_$GetPostsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postsResponse = null,
  }) {
    return _then(_$GetPostsSuccessImpl<T>(
      null == postsResponse
          ? _value.postsResponse
          : postsResponse // ignore: cast_nullable_to_non_nullable
              as PostsResponse,
    ));
  }
}

/// @nodoc

class _$GetPostsSuccessImpl<T> implements GetPostsSuccess<T> {
  const _$GetPostsSuccessImpl(this.postsResponse);

  @override
  final PostsResponse postsResponse;

  @override
  String toString() {
    return 'GetPostsStates<$T>.getPostsSuccess(postsResponse: $postsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsSuccessImpl<T> &&
            (identical(other.postsResponse, postsResponse) ||
                other.postsResponse == postsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsSuccessImplCopyWith<T, _$GetPostsSuccessImpl<T>> get copyWith =>
      __$$GetPostsSuccessImplCopyWithImpl<T, _$GetPostsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPostsLoading,
    required TResult Function(PostsResponse postsResponse) getPostsSuccess,
    required TResult Function(String error) getPostsError,
  }) {
    return getPostsSuccess(postsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPostsLoading,
    TResult? Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult? Function(String error)? getPostsError,
  }) {
    return getPostsSuccess?.call(postsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPostsLoading,
    TResult Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult Function(String error)? getPostsError,
    required TResult orElse(),
  }) {
    if (getPostsSuccess != null) {
      return getPostsSuccess(postsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetPostsLoading<T> value) getPostsLoading,
    required TResult Function(GetPostsSuccess<T> value) getPostsSuccess,
    required TResult Function(GetPostsError<T> value) getPostsError,
  }) {
    return getPostsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult? Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult? Function(GetPostsError<T> value)? getPostsError,
  }) {
    return getPostsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult Function(GetPostsError<T> value)? getPostsError,
    required TResult orElse(),
  }) {
    if (getPostsSuccess != null) {
      return getPostsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetPostsSuccess<T> implements GetPostsStates<T> {
  const factory GetPostsSuccess(final PostsResponse postsResponse) =
      _$GetPostsSuccessImpl<T>;

  PostsResponse get postsResponse;
  @JsonKey(ignore: true)
  _$$GetPostsSuccessImplCopyWith<T, _$GetPostsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPostsErrorImplCopyWith<T, $Res> {
  factory _$$GetPostsErrorImplCopyWith(_$GetPostsErrorImpl<T> value,
          $Res Function(_$GetPostsErrorImpl<T>) then) =
      __$$GetPostsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetPostsErrorImplCopyWithImpl<T, $Res>
    extends _$GetPostsStatesCopyWithImpl<T, $Res, _$GetPostsErrorImpl<T>>
    implements _$$GetPostsErrorImplCopyWith<T, $Res> {
  __$$GetPostsErrorImplCopyWithImpl(_$GetPostsErrorImpl<T> _value,
      $Res Function(_$GetPostsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetPostsErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPostsErrorImpl<T> implements GetPostsError<T> {
  const _$GetPostsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GetPostsStates<$T>.getPostsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsErrorImplCopyWith<T, _$GetPostsErrorImpl<T>> get copyWith =>
      __$$GetPostsErrorImplCopyWithImpl<T, _$GetPostsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPostsLoading,
    required TResult Function(PostsResponse postsResponse) getPostsSuccess,
    required TResult Function(String error) getPostsError,
  }) {
    return getPostsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPostsLoading,
    TResult? Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult? Function(String error)? getPostsError,
  }) {
    return getPostsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPostsLoading,
    TResult Function(PostsResponse postsResponse)? getPostsSuccess,
    TResult Function(String error)? getPostsError,
    required TResult orElse(),
  }) {
    if (getPostsError != null) {
      return getPostsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetPostsLoading<T> value) getPostsLoading,
    required TResult Function(GetPostsSuccess<T> value) getPostsSuccess,
    required TResult Function(GetPostsError<T> value) getPostsError,
  }) {
    return getPostsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult? Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult? Function(GetPostsError<T> value)? getPostsError,
  }) {
    return getPostsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetPostsLoading<T> value)? getPostsLoading,
    TResult Function(GetPostsSuccess<T> value)? getPostsSuccess,
    TResult Function(GetPostsError<T> value)? getPostsError,
    required TResult orElse(),
  }) {
    if (getPostsError != null) {
      return getPostsError(this);
    }
    return orElse();
  }
}

abstract class GetPostsError<T> implements GetPostsStates<T> {
  const factory GetPostsError({required final String error}) =
      _$GetPostsErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetPostsErrorImplCopyWith<T, _$GetPostsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
