import 'package:flutter/material.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';

@immutable
abstract interface class MtgLocalDataSource {
  Future<void> saveCard(CardModel card);

  Future<List<CardModel>> getCards();
}
