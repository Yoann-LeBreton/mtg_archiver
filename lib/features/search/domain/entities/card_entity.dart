import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/typedef/card_typedefs.dart';
import 'package:mtg_archiver/features/search/domain/entities/image_uris_entity.dart';

class CardEntity {
  CardEntity({
    required this.id,
    required this.name,
    required this.releaseDate,
    required this.type,
    required this.effect,
    required this.colors,
    required this.manaCost,
    this.imageUris,
  });

  String id;
  String name;
  String releaseDate;
  String type;
  String effect;
  List<ManaColor> colors;
  ManaCosts manaCost;
  ImageUrisEntity? imageUris;
}
