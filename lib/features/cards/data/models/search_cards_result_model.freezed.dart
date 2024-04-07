// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cards_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchCardsResultModel _$SearchCardsResultModelFromJson(
    Map<String, dynamic> json) {
  return _SearchCardsResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCardsResultModel {
  @JsonKey(name: 'total_cards', defaultValue: 0)
  int get totalCards => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more', defaultValue: false)
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', defaultValue: <CardModel>[])
  List<CardModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCardsResultModelCopyWith<SearchCardsResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCardsResultModelCopyWith<$Res> {
  factory $SearchCardsResultModelCopyWith(SearchCardsResultModel value,
          $Res Function(SearchCardsResultModel) then) =
      _$SearchCardsResultModelCopyWithImpl<$Res, SearchCardsResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_cards', defaultValue: 0) int totalCards,
      @JsonKey(name: 'has_more', defaultValue: false) bool hasMore,
      @JsonKey(name: 'data', defaultValue: <CardModel>[])
      List<CardModel> results});
}

/// @nodoc
class _$SearchCardsResultModelCopyWithImpl<$Res,
        $Val extends SearchCardsResultModel>
    implements $SearchCardsResultModelCopyWith<$Res> {
  _$SearchCardsResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCards = null,
    Object? hasMore = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      totalCards: null == totalCards
          ? _value.totalCards
          : totalCards // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchCardsResultModelImplCopyWith<$Res>
    implements $SearchCardsResultModelCopyWith<$Res> {
  factory _$$SearchCardsResultModelImplCopyWith(
          _$SearchCardsResultModelImpl value,
          $Res Function(_$SearchCardsResultModelImpl) then) =
      __$$SearchCardsResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_cards', defaultValue: 0) int totalCards,
      @JsonKey(name: 'has_more', defaultValue: false) bool hasMore,
      @JsonKey(name: 'data', defaultValue: <CardModel>[])
      List<CardModel> results});
}

/// @nodoc
class __$$SearchCardsResultModelImplCopyWithImpl<$Res>
    extends _$SearchCardsResultModelCopyWithImpl<$Res,
        _$SearchCardsResultModelImpl>
    implements _$$SearchCardsResultModelImplCopyWith<$Res> {
  __$$SearchCardsResultModelImplCopyWithImpl(
      _$SearchCardsResultModelImpl _value,
      $Res Function(_$SearchCardsResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCards = null,
    Object? hasMore = null,
    Object? results = null,
  }) {
    return _then(_$SearchCardsResultModelImpl(
      totalCards: null == totalCards
          ? _value.totalCards
          : totalCards // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchCardsResultModelImpl implements _SearchCardsResultModel {
  const _$SearchCardsResultModelImpl(
      {@JsonKey(name: 'total_cards', defaultValue: 0) required this.totalCards,
      @JsonKey(name: 'has_more', defaultValue: false) required this.hasMore,
      @JsonKey(name: 'data', defaultValue: <CardModel>[])
      required final List<CardModel> results})
      : _results = results;

  factory _$SearchCardsResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCardsResultModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_cards', defaultValue: 0)
  final int totalCards;
  @override
  @JsonKey(name: 'has_more', defaultValue: false)
  final bool hasMore;
  final List<CardModel> _results;
  @override
  @JsonKey(name: 'data', defaultValue: <CardModel>[])
  List<CardModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchCardsResultModel(totalCards: $totalCards, hasMore: $hasMore, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCardsResultModelImpl &&
            (identical(other.totalCards, totalCards) ||
                other.totalCards == totalCards) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCards, hasMore,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCardsResultModelImplCopyWith<_$SearchCardsResultModelImpl>
      get copyWith => __$$SearchCardsResultModelImplCopyWithImpl<
          _$SearchCardsResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCardsResultModelImplToJson(
      this,
    );
  }
}

abstract class _SearchCardsResultModel implements SearchCardsResultModel {
  const factory _SearchCardsResultModel(
      {@JsonKey(name: 'total_cards', defaultValue: 0)
      required final int totalCards,
      @JsonKey(name: 'has_more', defaultValue: false)
      required final bool hasMore,
      @JsonKey(name: 'data', defaultValue: <CardModel>[])
      required final List<CardModel> results}) = _$SearchCardsResultModelImpl;

  factory _SearchCardsResultModel.fromJson(Map<String, dynamic> json) =
      _$SearchCardsResultModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_cards', defaultValue: 0)
  int get totalCards;
  @override
  @JsonKey(name: 'has_more', defaultValue: false)
  bool get hasMore;
  @override
  @JsonKey(name: 'data', defaultValue: <CardModel>[])
  List<CardModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchCardsResultModelImplCopyWith<_$SearchCardsResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
