import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mtg_archiver/core/extensions/string_extensions.dart';
import 'package:mtg_archiver/features/cards/domain/entities/legalities_entity.dart';

part 'legalities_model.freezed.dart';
part 'legalities_model.g.dart';

@freezed
class LegalitiesModel with _$LegalitiesModel {
  const factory LegalitiesModel({
    required String standard,
    required String future,
    required String historic,
    required String timeless,
    required String gladiator,
    required String pioneer,
    required String explorer,
    required String modern,
    required String legacy,
    required String pauper,
    required String vintage,
    required String penny,
    required String commander,
    required String oathbreaker,
    required String standardbrawl,
    required String brawl,
    required String alchemy,
    required String paupercommander,
    required String duel,
    required String oldschool,
    required String premodern,
    required String predh,
  }) = _LegalitiesModel;

  factory LegalitiesModel.fromJson(dynamic json) =>
      _$LegalitiesModelFromJson(json);
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
