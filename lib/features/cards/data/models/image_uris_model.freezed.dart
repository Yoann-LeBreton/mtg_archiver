// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_uris_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageUrisModel _$ImageUrisModelFromJson(Map<String, dynamic> json) {
  return _ImageUrisModel.fromJson(json);
}

/// @nodoc
mixin _$ImageUrisModel {
  @HiveField(0)
  String? get small => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get normal => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get large => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get png => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'art_crop')
  String? get artCrop => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'border_crop')
  String? get borderCrop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrisModelCopyWith<ImageUrisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrisModelCopyWith<$Res> {
  factory $ImageUrisModelCopyWith(
          ImageUrisModel value, $Res Function(ImageUrisModel) then) =
      _$ImageUrisModelCopyWithImpl<$Res, ImageUrisModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? small,
      @HiveField(1) String? normal,
      @HiveField(2) String? large,
      @HiveField(3) String? png,
      @HiveField(4) @JsonKey(name: 'art_crop') String? artCrop,
      @HiveField(5) @JsonKey(name: 'border_crop') String? borderCrop});
}

/// @nodoc
class _$ImageUrisModelCopyWithImpl<$Res, $Val extends ImageUrisModel>
    implements $ImageUrisModelCopyWith<$Res> {
  _$ImageUrisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? normal = freezed,
    Object? large = freezed,
    Object? png = freezed,
    Object? artCrop = freezed,
    Object? borderCrop = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      artCrop: freezed == artCrop
          ? _value.artCrop
          : artCrop // ignore: cast_nullable_to_non_nullable
              as String?,
      borderCrop: freezed == borderCrop
          ? _value.borderCrop
          : borderCrop // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrisModelImplCopyWith<$Res>
    implements $ImageUrisModelCopyWith<$Res> {
  factory _$$ImageUrisModelImplCopyWith(_$ImageUrisModelImpl value,
          $Res Function(_$ImageUrisModelImpl) then) =
      __$$ImageUrisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? small,
      @HiveField(1) String? normal,
      @HiveField(2) String? large,
      @HiveField(3) String? png,
      @HiveField(4) @JsonKey(name: 'art_crop') String? artCrop,
      @HiveField(5) @JsonKey(name: 'border_crop') String? borderCrop});
}

/// @nodoc
class __$$ImageUrisModelImplCopyWithImpl<$Res>
    extends _$ImageUrisModelCopyWithImpl<$Res, _$ImageUrisModelImpl>
    implements _$$ImageUrisModelImplCopyWith<$Res> {
  __$$ImageUrisModelImplCopyWithImpl(
      _$ImageUrisModelImpl _value, $Res Function(_$ImageUrisModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? normal = freezed,
    Object? large = freezed,
    Object? png = freezed,
    Object? artCrop = freezed,
    Object? borderCrop = freezed,
  }) {
    return _then(_$ImageUrisModelImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
      artCrop: freezed == artCrop
          ? _value.artCrop
          : artCrop // ignore: cast_nullable_to_non_nullable
              as String?,
      borderCrop: freezed == borderCrop
          ? _value.borderCrop
          : borderCrop // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$ImageUrisModelImpl implements _ImageUrisModel {
  const _$ImageUrisModelImpl(
      {@HiveField(0) this.small,
      @HiveField(1) this.normal,
      @HiveField(2) this.large,
      @HiveField(3) this.png,
      @HiveField(4) @JsonKey(name: 'art_crop') this.artCrop,
      @HiveField(5) @JsonKey(name: 'border_crop') this.borderCrop});

  factory _$ImageUrisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrisModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? small;
  @override
  @HiveField(1)
  final String? normal;
  @override
  @HiveField(2)
  final String? large;
  @override
  @HiveField(3)
  final String? png;
  @override
  @HiveField(4)
  @JsonKey(name: 'art_crop')
  final String? artCrop;
  @override
  @HiveField(5)
  @JsonKey(name: 'border_crop')
  final String? borderCrop;

  @override
  String toString() {
    return 'ImageUrisModel(small: $small, normal: $normal, large: $large, png: $png, artCrop: $artCrop, borderCrop: $borderCrop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrisModelImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.normal, normal) || other.normal == normal) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.artCrop, artCrop) || other.artCrop == artCrop) &&
            (identical(other.borderCrop, borderCrop) ||
                other.borderCrop == borderCrop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, small, normal, large, png, artCrop, borderCrop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrisModelImplCopyWith<_$ImageUrisModelImpl> get copyWith =>
      __$$ImageUrisModelImplCopyWithImpl<_$ImageUrisModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrisModelImplToJson(
      this,
    );
  }
}

abstract class _ImageUrisModel implements ImageUrisModel {
  const factory _ImageUrisModel(
      {@HiveField(0) final String? small,
      @HiveField(1) final String? normal,
      @HiveField(2) final String? large,
      @HiveField(3) final String? png,
      @HiveField(4) @JsonKey(name: 'art_crop') final String? artCrop,
      @HiveField(5)
      @JsonKey(name: 'border_crop')
      final String? borderCrop}) = _$ImageUrisModelImpl;

  factory _ImageUrisModel.fromJson(Map<String, dynamic> json) =
      _$ImageUrisModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get small;
  @override
  @HiveField(1)
  String? get normal;
  @override
  @HiveField(2)
  String? get large;
  @override
  @HiveField(3)
  String? get png;
  @override
  @HiveField(4)
  @JsonKey(name: 'art_crop')
  String? get artCrop;
  @override
  @HiveField(5)
  @JsonKey(name: 'border_crop')
  String? get borderCrop;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrisModelImplCopyWith<_$ImageUrisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
