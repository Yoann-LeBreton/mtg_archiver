import 'package:flutter/material.dart';
import 'package:mtg_archiver/features/search/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/search/data/repositories/mtg_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mtg_repository.g.dart';

@riverpod
MtgRepository mtgRepository(MtgRepositoryRef ref) => MtgRepositoryImpl(
      mtgRemoteDataSource: ref.read(mtgRemoteDataSourceProvider),
    );

@immutable
abstract interface class MtgRepository {
  Future<SearchCardsResultModel> searchByName({required String name});
}
