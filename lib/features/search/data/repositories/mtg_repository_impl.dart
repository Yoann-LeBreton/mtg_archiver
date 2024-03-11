import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/search/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/search/data/models/search_query_model.dart';
import 'package:mtg_archiver/features/search/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/search/domain/repositories/mtg_repository.dart';

class MtgRepositoryImpl implements MtgRepository {
  const MtgRepositoryImpl({required this.mtgRemoteDataSource});
  final MtgRemoteDataSource mtgRemoteDataSource;

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
}
