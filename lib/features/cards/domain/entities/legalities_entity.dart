import 'package:mtg_archiver/core/enums/legality_enum.dart';

class LegalitiesEntity {
  LegalitiesEntity({
    required this.standard,
    required this.future,
    required this.historic,
    required this.timeless,
    required this.gladiator,
    required this.pioneer,
    required this.explorer,
    required this.modern,
    required this.legacy,
    required this.pauper,
    required this.vintage,
    required this.penny,
    required this.commander,
    required this.oathbreaker,
    required this.standardbrawl,
    required this.brawl,
    required this.alchemy,
    required this.paupercommander,
    required this.duel,
    required this.oldschool,
    required this.premodern,
    required this.predh,
  });

  Legality standard;
  Legality future;
  Legality historic;
  Legality timeless;
  Legality gladiator;
  Legality pioneer;
  Legality explorer;
  Legality modern;
  Legality legacy;
  Legality pauper;
  Legality vintage;
  Legality penny;
  Legality commander;
  Legality oathbreaker;
  Legality standardbrawl;
  Legality brawl;
  Legality alchemy;
  Legality paupercommander;
  Legality duel;
  Legality oldschool;
  Legality premodern;
  Legality predh;

  Map<String, Legality> toMap() {
    return <String, Legality>{
      'standard': standard,
      'future': future,
      'historic': historic,
      'timeless': timeless,
      'gladiator': gladiator,
      'pioneer': pioneer,
      'explorer': explorer,
      'modern': modern,
      'legacy': legacy,
      'pauper': pauper,
      'vintage': vintage,
      'penny': penny,
      'commander': commander,
      'oathbreaker': oathbreaker,
      'standardbrawl': standardbrawl,
      'brawl': brawl,
      'alchemy': alchemy,
      'paupercommander': paupercommander,
      'duel': duel,
      'oldschool': oldschool,
      'premodern': premodern,
      'predh': predh,
    };
  }
}
