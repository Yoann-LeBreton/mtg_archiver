// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_uris_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageUrisModelImpl _$$ImageUrisModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageUrisModelImpl(
      small: json['small'] as String?,
      normal: json['normal'] as String?,
      large: json['large'] as String?,
      png: json['png'] as String?,
      artCrop: json['art_crop'] as String?,
      borderCrop: json['border_crop'] as String?,
    );

Map<String, dynamic> _$$ImageUrisModelImplToJson(
        _$ImageUrisModelImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'normal': instance.normal,
      'large': instance.large,
      'png': instance.png,
      'art_crop': instance.artCrop,
      'border_crop': instance.borderCrop,
    };
