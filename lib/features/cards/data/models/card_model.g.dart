// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      releaseDate: json['released_at'] as String? ?? '',
      type: json['type_line'] as String? ?? '',
      effect: json['oracle_text'] as String? ?? '',
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      manaCost: json['mana_cost'] as String? ?? '',
      legalities: json['legalities'] == null
          ? null
          : LegalitiesModel.fromJson(json['legalities']),
      imageUris: json['image_uris'] == null
          ? null
          : ImageUrisModel.fromJson(json['image_uris']),
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'released_at': instance.releaseDate,
      'type_line': instance.type,
      'oracle_text': instance.effect,
      'colors': instance.colors,
      'mana_cost': instance.manaCost,
      'legalities': instance.legalities,
      'image_uris': instance.imageUris,
    };
