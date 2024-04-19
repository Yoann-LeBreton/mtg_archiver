import 'package:flutter/material.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';

@immutable
abstract interface class MtgLocalDataSource {
  Future<void> saveCard(CardModel card);

  Future<void> deleteCard({required String id});

  Future<bool> isLocal({required String id});

  Future<List<CardModel>> getCards();

  Future<CardModel?> getCardById({required String id});
}
