import 'package:mtg_archiver/core/constants/endpoint_constants.dart';
import 'package:mtg_archiver/core/constants/scryfall_api_constants.dart';
import 'package:mtg_archiver/core/data/datasources/remote_data_source.dart';
import 'package:mtg_archiver/features/cards/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';
import 'package:mtg_archiver/features/cards/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/cards/data/models/search_query_model.dart';

final class MtgRemoteDataSourceImpl extends RemoteDataSource
    implements MtgRemoteDataSource {
  MtgRemoteDataSourceImpl({required super.dio});

  @override
  Future<SearchCardsResultModel> searchCard({
    required SearchQueryModel searchQuery,
  }) async {
    final Map<String, dynamic> queryParams = <String, dynamic>{
      'q': searchQuery.searchText,
      'order': searchQuery.order ?? ScryfallApiConstants.searchSortByName,
      'dir': searchQuery.sortDirection ?? ScryfallApiConstants.searchSortAuto,
      'include_extras': searchQuery.showOtherType,
      'include_multilingual': searchQuery.includeMultiLingual,
      'page': searchQuery.numPage,
    };

    final dynamic result = await performGetRequestApi(
      apiEndpoint: EndpointConstants.mtgSearchEndPoint,
      queryParameters: queryParams,
    );
    return SearchCardsResultModel.fromJson(result);
  }

  @override
  Future<CardModel> cardById({required String cardId}) async {
    final dynamic result = await performGetRequestApi(apiEndpoint: '/$cardId');
    return CardModel.fromJson(result);
  }
}
