// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_uris_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImageUrisModelImplAdapter extends TypeAdapter<_$ImageUrisModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$ImageUrisModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ImageUrisModelImpl(
      small: fields[0] as String?,
      normal: fields[1] as String?,
      large: fields[2] as String?,
      png: fields[3] as String?,
      artCrop: fields[4] as String?,
      borderCrop: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$ImageUrisModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.small)
      ..writeByte(1)
      ..write(obj.normal)
      ..writeByte(2)
      ..write(obj.large)
      ..writeByte(3)
      ..write(obj.png)
      ..writeByte(4)
      ..write(obj.artCrop)
      ..writeByte(5)
      ..write(obj.borderCrop);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageUrisModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
