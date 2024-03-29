import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/search/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/repositories/mtg_repository_impl.dart';
import 'package:mtg_archiver/features/search/domain/entities/search_cards_result_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mtg_repository.g.dart';

@riverpod
MtgRepository mtgRepository(MtgRepositoryRef ref) => MtgRepositoryImpl(
      mtgRemoteDataSource: ref.read(mtgRemoteDataSourceProvider),
    );

@immutable
abstract interface class MtgRepository {
  Future<Result<SearchCardsResultEntity>> searchByName({
    required String searchText,
    required int numPage,
    bool? includeMultiLingual,
    bool? showOtherType,
    String? order,
    String? sortDirection,
  });
}
