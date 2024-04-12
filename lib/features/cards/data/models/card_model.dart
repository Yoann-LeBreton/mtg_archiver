import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/extensions/string_extensions.dart';
import 'package:mtg_archiver/features/cards/data/models/image_uris_model.dart';
import 'package:mtg_archiver/features/cards/data/models/legalities_model.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  @HiveType(typeId: 0)
  const factory CardModel({
    @HiveField(0) @JsonKey(name: 'id', defaultValue: '') required String id,
    @HiveField(1) @JsonKey(name: 'name', defaultValue: '') required String name,
    @HiveField(3)
    @JsonKey(name: 'released_at', defaultValue: '')
    required String releaseDate,
    @HiveField(4)
    @JsonKey(name: 'type_line', defaultValue: '')
    required String type,
    @HiveField(5)
    @JsonKey(name: 'oracle_text', defaultValue: '')
    required String effect,
    @HiveField(6)
    @JsonKey(name: 'colors', defaultValue: <String>[])
    required List<String> colors,
    @HiveField(7)
    @JsonKey(name: 'mana_cost', defaultValue: '')
    required String manaCost,
    @HiveField(8)
    @JsonKey(name: 'legalities', defaultValue: null)
    LegalitiesModel? legalities,
    @HiveField(9)
    @JsonKey(name: 'image_uris', defaultValue: null)
    ImageUrisModel? imageUris,
  }) = _CardModel;

  factory CardModel.fromJson(dynamic json) => _$CardModelFromJson(json);

  factory CardModel.fromDomain(CardEntity entity) => CardModel(
        id: entity.id,
        name: entity.name,
        releaseDate: entity.releaseDate,
        type: entity.type,
        effect: entity.effect,
        colors: List.empty(),
        manaCost: '',
        legalities: entity.legalities != null
            ? LegalitiesModel.fromDomain(entity: entity.legalities!)
            : null,
        imageUris: entity.imageUris != null
            ? ImageUrisModel.fromDomain(entity: entity.imageUris!)
            : null,
      );
}

extension CardModelX on CardModel {
  CardEntity toDomain() => CardEntity(
        id: id,
        name: name,
        releaseDate: releaseDate,
        type: type,
        effect: effect,
        colors: colors
            .map(
              (String color) => ManaColor.values
                  .firstWhereOrNull((ManaColor mana) => mana.apiValue == color),
            )
            .whereType<ManaColor>()
            .toList(),
        manaCost: manaCost.convertToManas(),
        legalities: legalities?.toDomain(),
        imageUris: imageUris?.toDomain(),
      );
}
