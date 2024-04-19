import 'package:mtg_archiver/core/data/datasources/mtg_local_data_source.dart';
import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/core/error/exceptions.dart';
import 'package:mtg_archiver/features/cards/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';
import 'package:mtg_archiver/features/cards/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/cards/data/models/search_query_model.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';

class MtgRepositoryImpl implements MtgRepository {
  const MtgRepositoryImpl({
    required this.mtgRemoteDataSource,
    required this.mtgLocalDataSource,
  });
  final MtgRemoteDataSource mtgRemoteDataSource;
  final MtgLocalDataSource mtgLocalDataSource;

  @override
  Future<Result<SearchCardsResultEntity>> searchByName({
    required String searchText,
    required int numPage,
    bool? includeMultiLingual,
    bool? showOtherType,
    String? order,
    String? sortDirection,
  }) =>
      runCatchingAsync(() async {
        final SearchCardsResultModel searchResult =
            await mtgRemoteDataSource.searchCard(
          searchQuery: SearchQueryModel(
            searchText: searchText,
            numPage: numPage,
            includeMultiLingual: includeMultiLingual ?? false,
            showOtherType: showOtherType ?? false,
            order: order,
            sortDirection: sortDirection,
          ),
        );
        return searchResult.toDomain();
      });

  @override
  Future<Result<CardEntity>> getCardById({required String cardId}) =>
      runCatchingAsync(() async {
        final CardModel? localData =
            await mtgLocalDataSource.getCardById(id: cardId);
        if (localData != null) {
          return localData.toDomain(isFavorite: true);
        }
        final CardModel result =
            await mtgRemoteDataSource.cardById(cardId: cardId);
        return result.toDomain();
      });

  @override
  Future<Result<List<CardEntity>>> getLocalCards() async {
    try {
      final List<CardModel> result = await mtgLocalDataSource.getCards();
      final List<CardEntity> list =
          result.map((CardModel e) => e.toDomain()).toList();
      return Result<List<CardEntity>>.success(data: list);
    } catch (_) {
      return Result<List<CardEntity>>.failure(exception: CacheException());
    }
  }

  @override
  Future<Result<void>> saveLocalCard({required CardEntity card}) async {
    try {
      await mtgLocalDataSource.saveCard(CardModel.fromDomain(card));
      return const Result<void>.success(data: null);
    } catch (_) {
      return Result<void>.failure(exception: CacheException());
    }
  }

  @override
  Future<Result<void>> removeLocalCard({required String cardId}) async {
    try {
      await mtgLocalDataSource.deleteCard(id: cardId);
      return const Result<void>.success(data: null);
    } catch (_) {
      return Result<void>.failure(exception: CacheException());
    }
  }

  @override
  Future<Result<bool>> isLocalCard({required String cardId}) async {
    try {
      final bool isLocal = await mtgLocalDataSource.isLocal(id: cardId);
      return Result<bool>.success(data: isLocal);
    } catch (_) {
      return Result<bool>.failure(exception: CacheException());
    }
  }
}
