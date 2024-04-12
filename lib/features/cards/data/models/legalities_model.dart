import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mtg_archiver/core/extensions/string_extensions.dart';
import 'package:mtg_archiver/features/cards/domain/entities/legalities_entity.dart';

part 'legalities_model.freezed.dart';
part 'legalities_model.g.dart';

@freezed
class LegalitiesModel with _$LegalitiesModel {
  @HiveType(typeId: 2)
  const factory LegalitiesModel({
    @HiveField(0) required String standard,
    @HiveField(1) required String future,
    @HiveField(2) required String historic,
    @HiveField(3) required String timeless,
    @HiveField(4) required String gladiator,
    @HiveField(5) required String pioneer,
    @HiveField(6) required String explorer,
    @HiveField(7) required String modern,
    @HiveField(8) required String legacy,
    @HiveField(9) required String pauper,
    @HiveField(10) required String vintage,
    @HiveField(11) required String penny,
    @HiveField(12) required String commander,
    @HiveField(13) required String oathbreaker,
    @HiveField(14) required String standardbrawl,
    @HiveField(15) required String brawl,
    @HiveField(16) required String alchemy,
    @HiveField(17) required String paupercommander,
    @HiveField(18) required String duel,
    @HiveField(19) required String oldschool,
    @HiveField(20) required String premodern,
    @HiveField(21) required String predh,
  }) = _LegalitiesModel;

  factory LegalitiesModel.fromJson(dynamic json) =>
      _$LegalitiesModelFromJson(json);

  factory LegalitiesModel.fromDomain({required LegalitiesEntity entity}) =>
      LegalitiesModel(
        standard: entity.standard.apiValue,
        future: entity.future.apiValue,
        historic: entity.historic.apiValue,
        timeless: entity.timeless.apiValue,
        gladiator: entity.gladiator.apiValue,
        pioneer: entity.pioneer.apiValue,
        explorer: entity.explorer.apiValue,
        modern: entity.modern.apiValue,
        legacy: entity.legacy.apiValue,
        pauper: entity.pauper.apiValue,
        vintage: entity.vintage.apiValue,
        penny: entity.penny.apiValue,
        commander: entity.commander.apiValue,
        oathbreaker: entity.oathbreaker.apiValue,
        standardbrawl: entity.standardbrawl.apiValue,
        brawl: entity.brawl.apiValue,
        alchemy: entity.alchemy.apiValue,
        paupercommander: entity.paupercommander.apiValue,
        duel: entity.duel.apiValue,
        oldschool: entity.oldschool.apiValue,
        premodern: entity.premodern.apiValue,
        predh: entity.predh.apiValue,
      );
}

extension LegalitiesModelX on LegalitiesModel {
  LegalitiesEntity toDomain() => LegalitiesEntity(
        standard: standard.convertToLegality(),
        future: future.convertToLegality(),
        historic: historic.convertToLegality(),
        timeless: timeless.convertToLegality(),
        gladiator: gladiator.convertToLegality(),
        pioneer: pioneer.convertToLegality(),
        explorer: explorer.convertToLegality(),
        modern: modern.convertToLegality(),
        legacy: legacy.convertToLegality(),
        pauper: pauper.convertToLegality(),
        vintage: vintage.convertToLegality(),
        penny: penny.convertToLegality(),
        commander: commander.convertToLegality(),
        oathbreaker: oathbreaker.convertToLegality(),
        standardbrawl: standardbrawl.convertToLegality(),
        brawl: brawl.convertToLegality(),
        alchemy: alchemy.convertToLegality(),
        paupercommander: paupercommander.convertToLegality(),
        duel: duel.convertToLegality(),
        oldschool: oldschool.convertToLegality(),
        premodern: premodern.convertToLegality(),
        predh: predh.convertToLegality(),
      );
}
