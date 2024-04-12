import 'package:hive_flutter/adapters.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';
import 'package:mtg_archiver/features/cards/data/models/image_uris_model.dart';
import 'package:mtg_archiver/features/cards/data/models/legalities_model.dart';

abstract class RegisterModule {
  static Future<HiveInterface> get hive async {
    Hive
      ..initFlutter()
      ..registerAdapter<CardModel>(CardModelImplAdapter())
      ..registerAdapter<ImageUrisModel>(ImageUrisModelImplAdapter())
      ..registerAdapter<LegalitiesModel>(LegalitiesModelImplAdapter());
    return Hive;
  }
}
