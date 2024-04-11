// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardModelImplAdapter extends TypeAdapter<_$CardModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$CardModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CardModelImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      releaseDate: fields[3] as String,
      type: fields[4] as String,
      effect: fields[5] as String,
      colors: (fields[6] as List).cast<String>(),
      manaCost: fields[7] as String,
      legalities: fields[8] as LegalitiesModel?,
      imageUris: fields[9] as ImageUrisModel?,
    );
  }

  @override
  void write(BinaryWriter writer, _$CardModelImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.releaseDate)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.effect)
      ..writeByte(7)
      ..write(obj.manaCost)
      ..writeByte(8)
      ..write(obj.legalities)
      ..writeByte(9)
      ..write(obj.imageUris)
      ..writeByte(6)
      ..write(obj.colors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
