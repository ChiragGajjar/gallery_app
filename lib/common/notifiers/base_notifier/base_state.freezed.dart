// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseState<State, OtherStates> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(State data) data,
    required TResult Function() loading,
    required TResult Function(OtherStates otherStates) other,
    required TResult Function(Failure failure) errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(State data)? data,
    TResult? Function()? loading,
    TResult? Function(OtherStates otherStates)? other,
    TResult? Function(Failure failure)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(State data)? data,
    TResult Function()? loading,
    TResult Function(OtherStates otherStates)? other,
    TResult Function(Failure failure)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<State, OtherStates> value) initial,
    required TResult Function(_Data<State, OtherStates> value) data,
    required TResult Function(_Loading<State, OtherStates> value) loading,
    required TResult Function(_Other<State, OtherStates> value) other,
    required TResult Function(_ErrorOccured<State, OtherStates> value)
        errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<State, OtherStates> value)? initial,
    TResult? Function(_Data<State, OtherStates> value)? data,
    TResult? Function(_Loading<State, OtherStates> value)? loading,
    TResult? Function(_Other<State, OtherStates> value)? other,
    TResult? Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<State, OtherStates> value)? initial,
    TResult Function(_Data<State, OtherStates> value)? data,
    TResult Function(_Loading<State, OtherStates> value)? loading,
    TResult Function(_Other<State, OtherStates> value)? other,
    TResult Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<State, OtherStates, $Res> {
  factory $BaseStateCopyWith(BaseState<State, OtherStates> value,
          $Res Function(BaseState<State, OtherStates>) then) =
      _$BaseStateCopyWithImpl<State, OtherStates, $Res,
          BaseState<State, OtherStates>>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<State, OtherStates, $Res,
        $Val extends BaseState<State, OtherStates>>
    implements $BaseStateCopyWith<State, OtherStates, $Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<State, OtherStates, $Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl<State, OtherStates> value,
          $Res Function(_$InitialImpl<State, OtherStates>) then) =
      __$$InitialImplCopyWithImpl<State, OtherStates, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<State, OtherStates, $Res>
    extends _$BaseStateCopyWithImpl<State, OtherStates, $Res,
        _$InitialImpl<State, OtherStates>>
    implements _$$InitialImplCopyWith<State, OtherStates, $Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl<State, OtherStates> _value,
      $Res Function(_$InitialImpl<State, OtherStates>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<State, OtherStates>
    implements _Initial<State, OtherStates> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BaseState<$State, $OtherStates>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<State, OtherStates>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(State data) data,
    required TResult Function() loading,
    required TResult Function(OtherStates otherStates) other,
    required TResult Function(Failure failure) errorOccured,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(State data)? data,
    TResult? Function()? loading,
    TResult? Function(OtherStates otherStates)? other,
    TResult? Function(Failure failure)? errorOccured,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(State data)? data,
    TResult Function()? loading,
    TResult Function(OtherStates otherStates)? other,
    TResult Function(Failure failure)? errorOccured,
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
    required TResult Function(_Initial<State, OtherStates> value) initial,
    required TResult Function(_Data<State, OtherStates> value) data,
    required TResult Function(_Loading<State, OtherStates> value) loading,
    required TResult Function(_Other<State, OtherStates> value) other,
    required TResult Function(_ErrorOccured<State, OtherStates> value)
        errorOccured,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<State, OtherStates> value)? initial,
    TResult? Function(_Data<State, OtherStates> value)? data,
    TResult? Function(_Loading<State, OtherStates> value)? loading,
    TResult? Function(_Other<State, OtherStates> value)? other,
    TResult? Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<State, OtherStates> value)? initial,
    TResult Function(_Data<State, OtherStates> value)? data,
    TResult Function(_Loading<State, OtherStates> value)? loading,
    TResult Function(_Other<State, OtherStates> value)? other,
    TResult Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<State, OtherStates>
    implements BaseState<State, OtherStates> {
  const factory _Initial() = _$InitialImpl<State, OtherStates>;
}

/// @nodoc
abstract class _$$DataImplCopyWith<State, OtherStates, $Res> {
  factory _$$DataImplCopyWith(_$DataImpl<State, OtherStates> value,
          $Res Function(_$DataImpl<State, OtherStates>) then) =
      __$$DataImplCopyWithImpl<State, OtherStates, $Res>;
  @useResult
  $Res call({State data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<State, OtherStates, $Res>
    extends _$BaseStateCopyWithImpl<State, OtherStates, $Res,
        _$DataImpl<State, OtherStates>>
    implements _$$DataImplCopyWith<State, OtherStates, $Res> {
  __$$DataImplCopyWithImpl(_$DataImpl<State, OtherStates> _value,
      $Res Function(_$DataImpl<State, OtherStates>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataImpl<State, OtherStates>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }
}

/// @nodoc

class _$DataImpl<State, OtherStates> implements _Data<State, OtherStates> {
  const _$DataImpl(this.data);

  @override
  final State data;

  @override
  String toString() {
    return 'BaseState<$State, $OtherStates>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<State, OtherStates> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<State, OtherStates, _$DataImpl<State, OtherStates>>
      get copyWith => __$$DataImplCopyWithImpl<State, OtherStates,
          _$DataImpl<State, OtherStates>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(State data) data,
    required TResult Function() loading,
    required TResult Function(OtherStates otherStates) other,
    required TResult Function(Failure failure) errorOccured,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(State data)? data,
    TResult? Function()? loading,
    TResult? Function(OtherStates otherStates)? other,
    TResult? Function(Failure failure)? errorOccured,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(State data)? data,
    TResult Function()? loading,
    TResult Function(OtherStates otherStates)? other,
    TResult Function(Failure failure)? errorOccured,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<State, OtherStates> value) initial,
    required TResult Function(_Data<State, OtherStates> value) data,
    required TResult Function(_Loading<State, OtherStates> value) loading,
    required TResult Function(_Other<State, OtherStates> value) other,
    required TResult Function(_ErrorOccured<State, OtherStates> value)
        errorOccured,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<State, OtherStates> value)? initial,
    TResult? Function(_Data<State, OtherStates> value)? data,
    TResult? Function(_Loading<State, OtherStates> value)? loading,
    TResult? Function(_Other<State, OtherStates> value)? other,
    TResult? Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<State, OtherStates> value)? initial,
    TResult Function(_Data<State, OtherStates> value)? data,
    TResult Function(_Loading<State, OtherStates> value)? loading,
    TResult Function(_Other<State, OtherStates> value)? other,
    TResult Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<State, OtherStates>
    implements BaseState<State, OtherStates> {
  const factory _Data(final State data) = _$DataImpl<State, OtherStates>;

  State get data;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<State, OtherStates, _$DataImpl<State, OtherStates>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<State, OtherStates, $Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl<State, OtherStates> value,
          $Res Function(_$LoadingImpl<State, OtherStates>) then) =
      __$$LoadingImplCopyWithImpl<State, OtherStates, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<State, OtherStates, $Res>
    extends _$BaseStateCopyWithImpl<State, OtherStates, $Res,
        _$LoadingImpl<State, OtherStates>>
    implements _$$LoadingImplCopyWith<State, OtherStates, $Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl<State, OtherStates> _value,
      $Res Function(_$LoadingImpl<State, OtherStates>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<State, OtherStates>
    implements _Loading<State, OtherStates> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BaseState<$State, $OtherStates>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl<State, OtherStates>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(State data) data,
    required TResult Function() loading,
    required TResult Function(OtherStates otherStates) other,
    required TResult Function(Failure failure) errorOccured,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(State data)? data,
    TResult? Function()? loading,
    TResult? Function(OtherStates otherStates)? other,
    TResult? Function(Failure failure)? errorOccured,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(State data)? data,
    TResult Function()? loading,
    TResult Function(OtherStates otherStates)? other,
    TResult Function(Failure failure)? errorOccured,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<State, OtherStates> value) initial,
    required TResult Function(_Data<State, OtherStates> value) data,
    required TResult Function(_Loading<State, OtherStates> value) loading,
    required TResult Function(_Other<State, OtherStates> value) other,
    required TResult Function(_ErrorOccured<State, OtherStates> value)
        errorOccured,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<State, OtherStates> value)? initial,
    TResult? Function(_Data<State, OtherStates> value)? data,
    TResult? Function(_Loading<State, OtherStates> value)? loading,
    TResult? Function(_Other<State, OtherStates> value)? other,
    TResult? Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<State, OtherStates> value)? initial,
    TResult Function(_Data<State, OtherStates> value)? data,
    TResult Function(_Loading<State, OtherStates> value)? loading,
    TResult Function(_Other<State, OtherStates> value)? other,
    TResult Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<State, OtherStates>
    implements BaseState<State, OtherStates> {
  const factory _Loading() = _$LoadingImpl<State, OtherStates>;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<State, OtherStates, $Res> {
  factory _$$OtherImplCopyWith(_$OtherImpl<State, OtherStates> value,
          $Res Function(_$OtherImpl<State, OtherStates>) then) =
      __$$OtherImplCopyWithImpl<State, OtherStates, $Res>;
  @useResult
  $Res call({OtherStates otherStates});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<State, OtherStates, $Res>
    extends _$BaseStateCopyWithImpl<State, OtherStates, $Res,
        _$OtherImpl<State, OtherStates>>
    implements _$$OtherImplCopyWith<State, OtherStates, $Res> {
  __$$OtherImplCopyWithImpl(_$OtherImpl<State, OtherStates> _value,
      $Res Function(_$OtherImpl<State, OtherStates>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherStates = freezed,
  }) {
    return _then(_$OtherImpl<State, OtherStates>(
      freezed == otherStates
          ? _value.otherStates
          : otherStates // ignore: cast_nullable_to_non_nullable
              as OtherStates,
    ));
  }
}

/// @nodoc

class _$OtherImpl<State, OtherStates> implements _Other<State, OtherStates> {
  const _$OtherImpl(this.otherStates);

  @override
  final OtherStates otherStates;

  @override
  String toString() {
    return 'BaseState<$State, $OtherStates>.other(otherStates: $otherStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl<State, OtherStates> &&
            const DeepCollectionEquality()
                .equals(other.otherStates, otherStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(otherStates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<State, OtherStates, _$OtherImpl<State, OtherStates>>
      get copyWith => __$$OtherImplCopyWithImpl<State, OtherStates,
          _$OtherImpl<State, OtherStates>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(State data) data,
    required TResult Function() loading,
    required TResult Function(OtherStates otherStates) other,
    required TResult Function(Failure failure) errorOccured,
  }) {
    return other(otherStates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(State data)? data,
    TResult? Function()? loading,
    TResult? Function(OtherStates otherStates)? other,
    TResult? Function(Failure failure)? errorOccured,
  }) {
    return other?.call(otherStates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(State data)? data,
    TResult Function()? loading,
    TResult Function(OtherStates otherStates)? other,
    TResult Function(Failure failure)? errorOccured,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(otherStates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<State, OtherStates> value) initial,
    required TResult Function(_Data<State, OtherStates> value) data,
    required TResult Function(_Loading<State, OtherStates> value) loading,
    required TResult Function(_Other<State, OtherStates> value) other,
    required TResult Function(_ErrorOccured<State, OtherStates> value)
        errorOccured,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<State, OtherStates> value)? initial,
    TResult? Function(_Data<State, OtherStates> value)? data,
    TResult? Function(_Loading<State, OtherStates> value)? loading,
    TResult? Function(_Other<State, OtherStates> value)? other,
    TResult? Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<State, OtherStates> value)? initial,
    TResult Function(_Data<State, OtherStates> value)? data,
    TResult Function(_Loading<State, OtherStates> value)? loading,
    TResult Function(_Other<State, OtherStates> value)? other,
    TResult Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other<State, OtherStates>
    implements BaseState<State, OtherStates> {
  const factory _Other(final OtherStates otherStates) =
      _$OtherImpl<State, OtherStates>;

  OtherStates get otherStates;
  @JsonKey(ignore: true)
  _$$OtherImplCopyWith<State, OtherStates, _$OtherImpl<State, OtherStates>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOccuredImplCopyWith<State, OtherStates, $Res> {
  factory _$$ErrorOccuredImplCopyWith(
          _$ErrorOccuredImpl<State, OtherStates> value,
          $Res Function(_$ErrorOccuredImpl<State, OtherStates>) then) =
      __$$ErrorOccuredImplCopyWithImpl<State, OtherStates, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorOccuredImplCopyWithImpl<State, OtherStates, $Res>
    extends _$BaseStateCopyWithImpl<State, OtherStates, $Res,
        _$ErrorOccuredImpl<State, OtherStates>>
    implements _$$ErrorOccuredImplCopyWith<State, OtherStates, $Res> {
  __$$ErrorOccuredImplCopyWithImpl(
      _$ErrorOccuredImpl<State, OtherStates> _value,
      $Res Function(_$ErrorOccuredImpl<State, OtherStates>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorOccuredImpl<State, OtherStates>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorOccuredImpl<State, OtherStates>
    implements _ErrorOccured<State, OtherStates> {
  const _$ErrorOccuredImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'BaseState<$State, $OtherStates>.errorOccured(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOccuredImpl<State, OtherStates> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOccuredImplCopyWith<State, OtherStates,
          _$ErrorOccuredImpl<State, OtherStates>>
      get copyWith => __$$ErrorOccuredImplCopyWithImpl<State, OtherStates,
          _$ErrorOccuredImpl<State, OtherStates>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(State data) data,
    required TResult Function() loading,
    required TResult Function(OtherStates otherStates) other,
    required TResult Function(Failure failure) errorOccured,
  }) {
    return errorOccured(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(State data)? data,
    TResult? Function()? loading,
    TResult? Function(OtherStates otherStates)? other,
    TResult? Function(Failure failure)? errorOccured,
  }) {
    return errorOccured?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(State data)? data,
    TResult Function()? loading,
    TResult Function(OtherStates otherStates)? other,
    TResult Function(Failure failure)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<State, OtherStates> value) initial,
    required TResult Function(_Data<State, OtherStates> value) data,
    required TResult Function(_Loading<State, OtherStates> value) loading,
    required TResult Function(_Other<State, OtherStates> value) other,
    required TResult Function(_ErrorOccured<State, OtherStates> value)
        errorOccured,
  }) {
    return errorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<State, OtherStates> value)? initial,
    TResult? Function(_Data<State, OtherStates> value)? data,
    TResult? Function(_Loading<State, OtherStates> value)? loading,
    TResult? Function(_Other<State, OtherStates> value)? other,
    TResult? Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
  }) {
    return errorOccured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<State, OtherStates> value)? initial,
    TResult Function(_Data<State, OtherStates> value)? data,
    TResult Function(_Loading<State, OtherStates> value)? loading,
    TResult Function(_Other<State, OtherStates> value)? other,
    TResult Function(_ErrorOccured<State, OtherStates> value)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccured<State, OtherStates>
    implements BaseState<State, OtherStates> {
  const factory _ErrorOccured(final Failure failure) =
      _$ErrorOccuredImpl<State, OtherStates>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorOccuredImplCopyWith<State, OtherStates,
          _$ErrorOccuredImpl<State, OtherStates>>
      get copyWith => throw _privateConstructorUsedError;
}
