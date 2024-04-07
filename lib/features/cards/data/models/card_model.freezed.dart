// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_at', defaultValue: '')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_line', defaultValue: '')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'oracle_text', defaultValue: '')
  String get effect => throw _privateConstructorUsedError;
  @JsonKey(name: 'colors', defaultValue: <String>[])
  List<String> get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'mana_cost', defaultValue: '')
  String get manaCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'legalities', defaultValue: null)
  LegalitiesModel? get legalities => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_uris', defaultValue: null)
  ImageUrisModel? get imageUris => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'released_at', defaultValue: '') String releaseDate,
      @JsonKey(name: 'type_line', defaultValue: '') String type,
      @JsonKey(name: 'oracle_text', defaultValue: '') String effect,
      @JsonKey(name: 'colors', defaultValue: <String>[]) List<String> colors,
      @JsonKey(name: 'mana_cost', defaultValue: '') String manaCost,
      @JsonKey(name: 'legalities', defaultValue: null)
      LegalitiesModel? legalities,
      @JsonKey(name: 'image_uris', defaultValue: null)
      ImageUrisModel? imageUris});

  $LegalitiesModelCopyWith<$Res>? get legalities;
  $ImageUrisModelCopyWith<$Res>? get imageUris;
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? type = null,
    Object? effect = null,
    Object? colors = null,
    Object? manaCost = null,
    Object? legalities = freezed,
    Object? imageUris = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      manaCost: null == manaCost
          ? _value.manaCost
          : manaCost // ignore: cast_nullable_to_non_nullable
              as String,
      legalities: freezed == legalities
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as LegalitiesModel?,
      imageUris: freezed == imageUris
          ? _value.imageUris
          : imageUris // ignore: cast_nullable_to_non_nullable
              as ImageUrisModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LegalitiesModelCopyWith<$Res>? get legalities {
    if (_value.legalities == null) {
      return null;
    }

    return $LegalitiesModelCopyWith<$Res>(_value.legalities!, (value) {
      return _then(_value.copyWith(legalities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrisModelCopyWith<$Res>? get imageUris {
    if (_value.imageUris == null) {
      return null;
    }

    return $ImageUrisModelCopyWith<$Res>(_value.imageUris!, (value) {
      return _then(_value.copyWith(imageUris: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardModelImplCopyWith<$Res>
    implements $CardModelCopyWith<$Res> {
  factory _$$CardModelImplCopyWith(
          _$CardModelImpl value, $Res Function(_$CardModelImpl) then) =
      __$$CardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'released_at', defaultValue: '') String releaseDate,
      @JsonKey(name: 'type_line', defaultValue: '') String type,
      @JsonKey(name: 'oracle_text', defaultValue: '') String effect,
      @JsonKey(name: 'colors', defaultValue: <String>[]) List<String> colors,
      @JsonKey(name: 'mana_cost', defaultValue: '') String manaCost,
      @JsonKey(name: 'legalities', defaultValue: null)
      LegalitiesModel? legalities,
      @JsonKey(name: 'image_uris', defaultValue: null)
      ImageUrisModel? imageUris});

  @override
  $LegalitiesModelCopyWith<$Res>? get legalities;
  @override
  $ImageUrisModelCopyWith<$Res>? get imageUris;
}

/// @nodoc
class __$$CardModelImplCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$CardModelImpl>
    implements _$$CardModelImplCopyWith<$Res> {
  __$$CardModelImplCopyWithImpl(
      _$CardModelImpl _value, $Res Function(_$CardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? type = null,
    Object? effect = null,
    Object? colors = null,
    Object? manaCost = null,
    Object? legalities = freezed,
    Object? imageUris = freezed,
  }) {
    return _then(_$CardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      manaCost: null == manaCost
          ? _value.manaCost
          : manaCost // ignore: cast_nullable_to_non_nullable
              as String,
      legalities: freezed == legalities
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as LegalitiesModel?,
      imageUris: freezed == imageUris
          ? _value.imageUris
          : imageUris // ignore: cast_nullable_to_non_nullable
              as ImageUrisModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardModelImpl implements _CardModel {
  const _$CardModelImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'released_at', defaultValue: '') required this.releaseDate,
      @JsonKey(name: 'type_line', defaultValue: '') required this.type,
      @JsonKey(name: 'oracle_text', defaultValue: '') required this.effect,
      @JsonKey(name: 'colors', defaultValue: <String>[])
      required final List<String> colors,
      @JsonKey(name: 'mana_cost', defaultValue: '') required this.manaCost,
      @JsonKey(name: 'legalities', defaultValue: null) this.legalities,
      @JsonKey(name: 'image_uris', defaultValue: null) this.imageUris})
      : _colors = colors;

  factory _$CardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardModelImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'released_at', defaultValue: '')
  final String releaseDate;
  @override
  @JsonKey(name: 'type_line', defaultValue: '')
  final String type;
  @override
  @JsonKey(name: 'oracle_text', defaultValue: '')
  final String effect;
  final List<String> _colors;
  @override
  @JsonKey(name: 'colors', defaultValue: <String>[])
  List<String> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  @JsonKey(name: 'mana_cost', defaultValue: '')
  final String manaCost;
  @override
  @JsonKey(name: 'legalities', defaultValue: null)
  final LegalitiesModel? legalities;
  @override
  @JsonKey(name: 'image_uris', defaultValue: null)
  final ImageUrisModel? imageUris;

  @override
  String toString() {
    return 'CardModel(id: $id, name: $name, releaseDate: $releaseDate, type: $type, effect: $effect, colors: $colors, manaCost: $manaCost, legalities: $legalities, imageUris: $imageUris)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.manaCost, manaCost) ||
                other.manaCost == manaCost) &&
            (identical(other.legalities, legalities) ||
                other.legalities == legalities) &&
            (identical(other.imageUris, imageUris) ||
                other.imageUris == imageUris));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      releaseDate,
      type,
      effect,
      const DeepCollectionEquality().hash(_colors),
      manaCost,
      legalities,
      imageUris);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      __$$CardModelImplCopyWithImpl<_$CardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardModelImplToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'released_at', defaultValue: '')
      required final String releaseDate,
      @JsonKey(name: 'type_line', defaultValue: '') required final String type,
      @JsonKey(name: 'oracle_text', defaultValue: '')
      required final String effect,
      @JsonKey(name: 'colors', defaultValue: <String>[])
      required final List<String> colors,
      @JsonKey(name: 'mana_cost', defaultValue: '')
      required final String manaCost,
      @JsonKey(name: 'legalities', defaultValue: null)
      final LegalitiesModel? legalities,
      @JsonKey(name: 'image_uris', defaultValue: null)
      final ImageUrisModel? imageUris}) = _$CardModelImpl;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$CardModelImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'released_at', defaultValue: '')
  String get releaseDate;
  @override
  @JsonKey(name: 'type_line', defaultValue: '')
  String get type;
  @override
  @JsonKey(name: 'oracle_text', defaultValue: '')
  String get effect;
  @override
  @JsonKey(name: 'colors', defaultValue: <String>[])
  List<String> get colors;
  @override
  @JsonKey(name: 'mana_cost', defaultValue: '')
  String get manaCost;
  @override
  @JsonKey(name: 'legalities', defaultValue: null)
  LegalitiesModel? get legalities;
  @override
  @JsonKey(name: 'image_uris', defaultValue: null)
  ImageUrisModel? get imageUris;
  @override
  @JsonKey(ignore: true)
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
