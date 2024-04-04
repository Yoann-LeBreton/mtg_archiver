// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_mtg_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchMtgState {
  int get numPage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numPage, bool hasMore) initial,
    required TResult Function(int numPage, bool hasMore) loading,
    required TResult Function(int numPage, List<CardEntity> cards, bool hasMore)
        success,
    required TResult Function(int numPage, Exception exception, bool hasMore)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numPage, bool hasMore)? initial,
    TResult? Function(int numPage, bool hasMore)? loading,
    TResult? Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult? Function(int numPage, Exception exception, bool hasMore)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numPage, bool hasMore)? initial,
    TResult Function(int numPage, bool hasMore)? loading,
    TResult Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult Function(int numPage, Exception exception, bool hasMore)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMtgInital value) initial,
    required TResult Function(_SearchMtgLoading value) loading,
    required TResult Function(_SearchMtgSuccess value) success,
    required TResult Function(_SearchMtgError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMtgInital value)? initial,
    TResult? Function(_SearchMtgLoading value)? loading,
    TResult? Function(_SearchMtgSuccess value)? success,
    TResult? Function(_SearchMtgError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMtgInital value)? initial,
    TResult Function(_SearchMtgLoading value)? loading,
    TResult Function(_SearchMtgSuccess value)? success,
    TResult Function(_SearchMtgError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMtgStateCopyWith<SearchMtgState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMtgStateCopyWith<$Res> {
  factory $SearchMtgStateCopyWith(
          SearchMtgState value, $Res Function(SearchMtgState) then) =
      _$SearchMtgStateCopyWithImpl<$Res, SearchMtgState>;
  @useResult
  $Res call({int numPage, bool hasMore});
}

/// @nodoc
class _$SearchMtgStateCopyWithImpl<$Res, $Val extends SearchMtgState>
    implements $SearchMtgStateCopyWith<$Res> {
  _$SearchMtgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPage = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      numPage: null == numPage
          ? _value.numPage
          : numPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchMtgInitalImplCopyWith<$Res>
    implements $SearchMtgStateCopyWith<$Res> {
  factory _$$SearchMtgInitalImplCopyWith(_$SearchMtgInitalImpl value,
          $Res Function(_$SearchMtgInitalImpl) then) =
      __$$SearchMtgInitalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numPage, bool hasMore});
}

/// @nodoc
class __$$SearchMtgInitalImplCopyWithImpl<$Res>
    extends _$SearchMtgStateCopyWithImpl<$Res, _$SearchMtgInitalImpl>
    implements _$$SearchMtgInitalImplCopyWith<$Res> {
  __$$SearchMtgInitalImplCopyWithImpl(
      _$SearchMtgInitalImpl _value, $Res Function(_$SearchMtgInitalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPage = null,
    Object? hasMore = null,
  }) {
    return _then(_$SearchMtgInitalImpl(
      numPage: null == numPage
          ? _value.numPage
          : numPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchMtgInitalImpl implements _SearchMtgInital {
  const _$SearchMtgInitalImpl({required this.numPage, this.hasMore = true});

  @override
  final int numPage;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'SearchMtgState.initial(numPage: $numPage, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMtgInitalImpl &&
            (identical(other.numPage, numPage) || other.numPage == numPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numPage, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMtgInitalImplCopyWith<_$SearchMtgInitalImpl> get copyWith =>
      __$$SearchMtgInitalImplCopyWithImpl<_$SearchMtgInitalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numPage, bool hasMore) initial,
    required TResult Function(int numPage, bool hasMore) loading,
    required TResult Function(int numPage, List<CardEntity> cards, bool hasMore)
        success,
    required TResult Function(int numPage, Exception exception, bool hasMore)
        error,
  }) {
    return initial(numPage, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numPage, bool hasMore)? initial,
    TResult? Function(int numPage, bool hasMore)? loading,
    TResult? Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult? Function(int numPage, Exception exception, bool hasMore)? error,
  }) {
    return initial?.call(numPage, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numPage, bool hasMore)? initial,
    TResult Function(int numPage, bool hasMore)? loading,
    TResult Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult Function(int numPage, Exception exception, bool hasMore)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(numPage, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMtgInital value) initial,
    required TResult Function(_SearchMtgLoading value) loading,
    required TResult Function(_SearchMtgSuccess value) success,
    required TResult Function(_SearchMtgError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMtgInital value)? initial,
    TResult? Function(_SearchMtgLoading value)? loading,
    TResult? Function(_SearchMtgSuccess value)? success,
    TResult? Function(_SearchMtgError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMtgInital value)? initial,
    TResult Function(_SearchMtgLoading value)? loading,
    TResult Function(_SearchMtgSuccess value)? success,
    TResult Function(_SearchMtgError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchMtgInital implements SearchMtgState {
  const factory _SearchMtgInital(
      {required final int numPage, final bool hasMore}) = _$SearchMtgInitalImpl;

  @override
  int get numPage;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$SearchMtgInitalImplCopyWith<_$SearchMtgInitalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchMtgLoadingImplCopyWith<$Res>
    implements $SearchMtgStateCopyWith<$Res> {
  factory _$$SearchMtgLoadingImplCopyWith(_$SearchMtgLoadingImpl value,
          $Res Function(_$SearchMtgLoadingImpl) then) =
      __$$SearchMtgLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numPage, bool hasMore});
}

/// @nodoc
class __$$SearchMtgLoadingImplCopyWithImpl<$Res>
    extends _$SearchMtgStateCopyWithImpl<$Res, _$SearchMtgLoadingImpl>
    implements _$$SearchMtgLoadingImplCopyWith<$Res> {
  __$$SearchMtgLoadingImplCopyWithImpl(_$SearchMtgLoadingImpl _value,
      $Res Function(_$SearchMtgLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPage = null,
    Object? hasMore = null,
  }) {
    return _then(_$SearchMtgLoadingImpl(
      numPage: null == numPage
          ? _value.numPage
          : numPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchMtgLoadingImpl implements _SearchMtgLoading {
  const _$SearchMtgLoadingImpl({required this.numPage, this.hasMore = true});

  @override
  final int numPage;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'SearchMtgState.loading(numPage: $numPage, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMtgLoadingImpl &&
            (identical(other.numPage, numPage) || other.numPage == numPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numPage, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMtgLoadingImplCopyWith<_$SearchMtgLoadingImpl> get copyWith =>
      __$$SearchMtgLoadingImplCopyWithImpl<_$SearchMtgLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numPage, bool hasMore) initial,
    required TResult Function(int numPage, bool hasMore) loading,
    required TResult Function(int numPage, List<CardEntity> cards, bool hasMore)
        success,
    required TResult Function(int numPage, Exception exception, bool hasMore)
        error,
  }) {
    return loading(numPage, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numPage, bool hasMore)? initial,
    TResult? Function(int numPage, bool hasMore)? loading,
    TResult? Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult? Function(int numPage, Exception exception, bool hasMore)? error,
  }) {
    return loading?.call(numPage, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numPage, bool hasMore)? initial,
    TResult Function(int numPage, bool hasMore)? loading,
    TResult Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult Function(int numPage, Exception exception, bool hasMore)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(numPage, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMtgInital value) initial,
    required TResult Function(_SearchMtgLoading value) loading,
    required TResult Function(_SearchMtgSuccess value) success,
    required TResult Function(_SearchMtgError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMtgInital value)? initial,
    TResult? Function(_SearchMtgLoading value)? loading,
    TResult? Function(_SearchMtgSuccess value)? success,
    TResult? Function(_SearchMtgError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMtgInital value)? initial,
    TResult Function(_SearchMtgLoading value)? loading,
    TResult Function(_SearchMtgSuccess value)? success,
    TResult Function(_SearchMtgError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchMtgLoading implements SearchMtgState {
  const factory _SearchMtgLoading(
      {required final int numPage,
      final bool hasMore}) = _$SearchMtgLoadingImpl;

  @override
  int get numPage;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$SearchMtgLoadingImplCopyWith<_$SearchMtgLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchMtgSuccessImplCopyWith<$Res>
    implements $SearchMtgStateCopyWith<$Res> {
  factory _$$SearchMtgSuccessImplCopyWith(_$SearchMtgSuccessImpl value,
          $Res Function(_$SearchMtgSuccessImpl) then) =
      __$$SearchMtgSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numPage, List<CardEntity> cards, bool hasMore});
}

/// @nodoc
class __$$SearchMtgSuccessImplCopyWithImpl<$Res>
    extends _$SearchMtgStateCopyWithImpl<$Res, _$SearchMtgSuccessImpl>
    implements _$$SearchMtgSuccessImplCopyWith<$Res> {
  __$$SearchMtgSuccessImplCopyWithImpl(_$SearchMtgSuccessImpl _value,
      $Res Function(_$SearchMtgSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPage = null,
    Object? cards = null,
    Object? hasMore = null,
  }) {
    return _then(_$SearchMtgSuccessImpl(
      numPage: null == numPage
          ? _value.numPage
          : numPage // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchMtgSuccessImpl implements _SearchMtgSuccess {
  const _$SearchMtgSuccessImpl(
      {required this.numPage,
      required final List<CardEntity> cards,
      this.hasMore = true})
      : _cards = cards;

  @override
  final int numPage;
  final List<CardEntity> _cards;
  @override
  List<CardEntity> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'SearchMtgState.success(numPage: $numPage, cards: $cards, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMtgSuccessImpl &&
            (identical(other.numPage, numPage) || other.numPage == numPage) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numPage,
      const DeepCollectionEquality().hash(_cards), hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMtgSuccessImplCopyWith<_$SearchMtgSuccessImpl> get copyWith =>
      __$$SearchMtgSuccessImplCopyWithImpl<_$SearchMtgSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numPage, bool hasMore) initial,
    required TResult Function(int numPage, bool hasMore) loading,
    required TResult Function(int numPage, List<CardEntity> cards, bool hasMore)
        success,
    required TResult Function(int numPage, Exception exception, bool hasMore)
        error,
  }) {
    return success(numPage, cards, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numPage, bool hasMore)? initial,
    TResult? Function(int numPage, bool hasMore)? loading,
    TResult? Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult? Function(int numPage, Exception exception, bool hasMore)? error,
  }) {
    return success?.call(numPage, cards, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numPage, bool hasMore)? initial,
    TResult Function(int numPage, bool hasMore)? loading,
    TResult Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult Function(int numPage, Exception exception, bool hasMore)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(numPage, cards, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMtgInital value) initial,
    required TResult Function(_SearchMtgLoading value) loading,
    required TResult Function(_SearchMtgSuccess value) success,
    required TResult Function(_SearchMtgError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMtgInital value)? initial,
    TResult? Function(_SearchMtgLoading value)? loading,
    TResult? Function(_SearchMtgSuccess value)? success,
    TResult? Function(_SearchMtgError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMtgInital value)? initial,
    TResult Function(_SearchMtgLoading value)? loading,
    TResult Function(_SearchMtgSuccess value)? success,
    TResult Function(_SearchMtgError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchMtgSuccess implements SearchMtgState {
  const factory _SearchMtgSuccess(
      {required final int numPage,
      required final List<CardEntity> cards,
      final bool hasMore}) = _$SearchMtgSuccessImpl;

  @override
  int get numPage;
  List<CardEntity> get cards;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$SearchMtgSuccessImplCopyWith<_$SearchMtgSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchMtgErrorImplCopyWith<$Res>
    implements $SearchMtgStateCopyWith<$Res> {
  factory _$$SearchMtgErrorImplCopyWith(_$SearchMtgErrorImpl value,
          $Res Function(_$SearchMtgErrorImpl) then) =
      __$$SearchMtgErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numPage, Exception exception, bool hasMore});
}

/// @nodoc
class __$$SearchMtgErrorImplCopyWithImpl<$Res>
    extends _$SearchMtgStateCopyWithImpl<$Res, _$SearchMtgErrorImpl>
    implements _$$SearchMtgErrorImplCopyWith<$Res> {
  __$$SearchMtgErrorImplCopyWithImpl(
      _$SearchMtgErrorImpl _value, $Res Function(_$SearchMtgErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPage = null,
    Object? exception = null,
    Object? hasMore = null,
  }) {
    return _then(_$SearchMtgErrorImpl(
      numPage: null == numPage
          ? _value.numPage
          : numPage // ignore: cast_nullable_to_non_nullable
              as int,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchMtgErrorImpl implements _SearchMtgError {
  const _$SearchMtgErrorImpl(
      {required this.numPage, required this.exception, this.hasMore = true});

  @override
  final int numPage;
  @override
  final Exception exception;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'SearchMtgState.error(numPage: $numPage, exception: $exception, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMtgErrorImpl &&
            (identical(other.numPage, numPage) || other.numPage == numPage) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numPage, exception, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMtgErrorImplCopyWith<_$SearchMtgErrorImpl> get copyWith =>
      __$$SearchMtgErrorImplCopyWithImpl<_$SearchMtgErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numPage, bool hasMore) initial,
    required TResult Function(int numPage, bool hasMore) loading,
    required TResult Function(int numPage, List<CardEntity> cards, bool hasMore)
        success,
    required TResult Function(int numPage, Exception exception, bool hasMore)
        error,
  }) {
    return error(numPage, exception, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numPage, bool hasMore)? initial,
    TResult? Function(int numPage, bool hasMore)? loading,
    TResult? Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult? Function(int numPage, Exception exception, bool hasMore)? error,
  }) {
    return error?.call(numPage, exception, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numPage, bool hasMore)? initial,
    TResult Function(int numPage, bool hasMore)? loading,
    TResult Function(int numPage, List<CardEntity> cards, bool hasMore)?
        success,
    TResult Function(int numPage, Exception exception, bool hasMore)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(numPage, exception, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMtgInital value) initial,
    required TResult Function(_SearchMtgLoading value) loading,
    required TResult Function(_SearchMtgSuccess value) success,
    required TResult Function(_SearchMtgError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMtgInital value)? initial,
    TResult? Function(_SearchMtgLoading value)? loading,
    TResult? Function(_SearchMtgSuccess value)? success,
    TResult? Function(_SearchMtgError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMtgInital value)? initial,
    TResult Function(_SearchMtgLoading value)? loading,
    TResult Function(_SearchMtgSuccess value)? success,
    TResult Function(_SearchMtgError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchMtgError implements SearchMtgState {
  const factory _SearchMtgError(
      {required final int numPage,
      required final Exception exception,
      final bool hasMore}) = _$SearchMtgErrorImpl;

  @override
  int get numPage;
  Exception get exception;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$SearchMtgErrorImplCopyWith<_$SearchMtgErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
