import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/data/datasources/mtg_local_data_source_impl.dart';
import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/cards/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/cards/data/repositories/mtg_repository_impl.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_cards_result_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mtg_repository.g.dart';

@Riverpod(keepAlive: true)
MtgRepository mtgRepository(MtgRepositoryRef ref) => MtgRepositoryImpl(
      mtgRemoteDataSource: ref.watch(mtgRemoteDataSourceProvider),
      mtgLocalDataSource: ref.watch(mtgLocalDataSourceProvider),
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

  Future<Result<CardEntity>> getCardById({required String cardId});

  Future<Result<void>> saveLocalCard({required CardEntity card});

  Future<Result<bool>> isLocalCard({required String cardId});

  Future<Result<void>> removeLocalCard({required String cardId});

  Future<Result<List<CardEntity>>> getLocalCards();
}
