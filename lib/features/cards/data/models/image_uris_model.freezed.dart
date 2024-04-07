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
  String? get small => throw _privateConstructorUsedError;
  String? get normal => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get png => throw _privateConstructorUsedError;
  @JsonKey(name: 'art_crop')
  String? get artCrop => throw _privateConstructorUsedError;
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
      {String? small,
      String? normal,
      String? large,
      String? png,
      @JsonKey(name: 'art_crop') String? artCrop,
      @JsonKey(name: 'border_crop') String? borderCrop});
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
      {String? small,
      String? normal,
      String? large,
      String? png,
      @JsonKey(name: 'art_crop') String? artCrop,
      @JsonKey(name: 'border_crop') String? borderCrop});
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
class _$ImageUrisModelImpl implements _ImageUrisModel {
  const _$ImageUrisModelImpl(
      {this.small,
      this.normal,
      this.large,
      this.png,
      @JsonKey(name: 'art_crop') this.artCrop,
      @JsonKey(name: 'border_crop') this.borderCrop});

  factory _$ImageUrisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrisModelImplFromJson(json);

  @override
  final String? small;
  @override
  final String? normal;
  @override
  final String? large;
  @override
  final String? png;
  @override
  @JsonKey(name: 'art_crop')
  final String? artCrop;
  @override
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
          {final String? small,
          final String? normal,
          final String? large,
          final String? png,
          @JsonKey(name: 'art_crop') final String? artCrop,
          @JsonKey(name: 'border_crop') final String? borderCrop}) =
      _$ImageUrisModelImpl;

  factory _ImageUrisModel.fromJson(Map<String, dynamic> json) =
      _$ImageUrisModelImpl.fromJson;

  @override
  String? get small;
  @override
  String? get normal;
  @override
  String? get large;
  @override
  String? get png;
  @override
  @JsonKey(name: 'art_crop')
  String? get artCrop;
  @override
  @JsonKey(name: 'border_crop')
  String? get borderCrop;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrisModelImplCopyWith<_$ImageUrisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
