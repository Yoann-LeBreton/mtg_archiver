import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/extensions/string_extensions.dart';
import 'package:mtg_archiver/features/cards/data/models/image_uris_model.dart';
import 'package:mtg_archiver/features/cards/data/models/legalities_model.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'released_at', defaultValue: '') required String releaseDate,
    @JsonKey(name: 'type_line', defaultValue: '') required String type,
    @JsonKey(name: 'oracle_text', defaultValue: '') required String effect,
    @JsonKey(name: 'colors', defaultValue: <String>[])
    required List<String> colors,
    @JsonKey(name: 'mana_cost', defaultValue: '') required String manaCost,
    @JsonKey(name: 'legalities', defaultValue: null)
    LegalitiesModel? legalities,
    @JsonKey(name: 'image_uris', defaultValue: null) ImageUrisModel? imageUris,
  }) = _CardModel;

  factory CardModel.fromJson(dynamic json) => _$CardModelFromJson(json);
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
