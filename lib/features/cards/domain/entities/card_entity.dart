import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/typedef/card_typedefs.dart';
import 'package:mtg_archiver/features/cards/domain/entities/image_uris_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/legalities_entity.dart';

class CardEntity {
  CardEntity({
    required this.id,
    required this.name,
    required this.releaseDate,
    required this.type,
    required this.effect,
    required this.colors,
    required this.manaCost,
    this.legalities,
    this.imageUris,
    this.isFavorite = false,
  });

  String id;
  String name;
  String releaseDate;
  String type;
  String effect;
  List<ManaColor> colors;
  ManaCosts manaCost;
  LegalitiesEntity? legalities;
  ImageUrisEntity? imageUris;
  bool isFavorite;

  CardEntity copyWith({
    String? id,
    String? name,
    String? releaseDate,
    String? type,
    String? effect,
    List<ManaColor>? colors,
    ManaCosts? manaCost,
    LegalitiesEntity? legalities,
    ImageUrisEntity? imageUris,
    bool? isFavorite,
  }) {
    return CardEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      releaseDate: releaseDate ?? this.releaseDate,
      type: type ?? this.type,
      effect: effect ?? this.effect,
      colors: colors ?? this.colors,
      manaCost: manaCost ?? this.manaCost,
      legalities: legalities ?? this.legalities,
      imageUris: imageUris ?? this.imageUris,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
