// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legalities_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LegalitiesModelImplAdapter extends TypeAdapter<_$LegalitiesModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$LegalitiesModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LegalitiesModelImpl(
      standard: fields[0] as String,
      future: fields[1] as String,
      historic: fields[2] as String,
      timeless: fields[3] as String,
      gladiator: fields[4] as String,
      pioneer: fields[5] as String,
      explorer: fields[6] as String,
      modern: fields[7] as String,
      legacy: fields[8] as String,
      pauper: fields[9] as String,
      vintage: fields[10] as String,
      penny: fields[11] as String,
      commander: fields[12] as String,
      oathbreaker: fields[13] as String,
      standardbrawl: fields[14] as String,
      brawl: fields[15] as String,
      alchemy: fields[16] as String,
      paupercommander: fields[17] as String,
      duel: fields[18] as String,
      oldschool: fields[19] as String,
      premodern: fields[20] as String,
      predh: fields[21] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$LegalitiesModelImpl obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.standard)
      ..writeByte(1)
      ..write(obj.future)
      ..writeByte(2)
      ..write(obj.historic)
      ..writeByte(3)
      ..write(obj.timeless)
      ..writeByte(4)
      ..write(obj.gladiator)
      ..writeByte(5)
      ..write(obj.pioneer)
      ..writeByte(6)
      ..write(obj.explorer)
      ..writeByte(7)
      ..write(obj.modern)
      ..writeByte(8)
      ..write(obj.legacy)
      ..writeByte(9)
      ..write(obj.pauper)
      ..writeByte(10)
      ..write(obj.vintage)
      ..writeByte(11)
      ..write(obj.penny)
      ..writeByte(12)
      ..write(obj.commander)
      ..writeByte(13)
      ..write(obj.oathbreaker)
      ..writeByte(14)
      ..write(obj.standardbrawl)
      ..writeByte(15)
      ..write(obj.brawl)
      ..writeByte(16)
      ..write(obj.alchemy)
      ..writeByte(17)
      ..write(obj.paupercommander)
      ..writeByte(18)
      ..write(obj.duel)
      ..writeByte(19)
      ..write(obj.oldschool)
      ..writeByte(20)
      ..write(obj.premodern)
      ..writeByte(21)
      ..write(obj.predh);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LegalitiesModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LegalitiesModelImpl _$$LegalitiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LegalitiesModelImpl(
      standard: json['standard'] as String,
      future: json['future'] as String,
      historic: json['historic'] as String,
      timeless: json['timeless'] as String,
      gladiator: json['gladiator'] as String,
      pioneer: json['pioneer'] as String,
      explorer: json['explorer'] as String,
      modern: json['modern'] as String,
      legacy: json['legacy'] as String,
      pauper: json['pauper'] as String,
      vintage: json['vintage'] as String,
      penny: json['penny'] as String,
      commander: json['commander'] as String,
      oathbreaker: json['oathbreaker'] as String,
      standardbrawl: json['standardbrawl'] as String,
      brawl: json['brawl'] as String,
      alchemy: json['alchemy'] as String,
      paupercommander: json['paupercommander'] as String,
      duel: json['duel'] as String,
      oldschool: json['oldschool'] as String,
      premodern: json['premodern'] as String,
      predh: json['predh'] as String,
    );

Map<String, dynamic> _$$LegalitiesModelImplToJson(
        _$LegalitiesModelImpl instance) =>
    <String, dynamic>{
      'standard': instance.standard,
      'future': instance.future,
      'historic': instance.historic,
      'timeless': instance.timeless,
      'gladiator': instance.gladiator,
      'pioneer': instance.pioneer,
      'explorer': instance.explorer,
      'modern': instance.modern,
      'legacy': instance.legacy,
      'pauper': instance.pauper,
      'vintage': instance.vintage,
      'penny': instance.penny,
      'commander': instance.commander,
      'oathbreaker': instance.oathbreaker,
      'standardbrawl': instance.standardbrawl,
      'brawl': instance.brawl,
      'alchemy': instance.alchemy,
      'paupercommander': instance.paupercommander,
      'duel': instance.duel,
      'oldschool': instance.oldschool,
      'premodern': instance.premodern,
      'predh': instance.predh,
    };
