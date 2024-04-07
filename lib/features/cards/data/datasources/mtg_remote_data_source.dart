import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/di/injection_providers.dart';
import 'package:mtg_archiver/features/cards/data/datasources/mtg_remote_data_source_impl.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';
import 'package:mtg_archiver/features/cards/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/cards/data/models/search_query_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mtg_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
MtgRemoteDataSourceImpl mtgRemoteDataSource(MtgRemoteDataSourceRef ref) =>
    MtgRemoteDataSourceImpl(dio: ref.read(dioProvider));

@immutable
abstract interface class MtgRemoteDataSource {
  Future<SearchCardsResultModel> searchCard({
    required SearchQueryModel searchQuery,
  });

  Future<CardModel> cardById({required String cardId});
}
