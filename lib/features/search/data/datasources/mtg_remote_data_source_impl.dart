import 'package:mtg_archiver/core/constants/endpoint_constants.dart';
import 'package:mtg_archiver/core/data/datasources/remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/models/search_cards_result_model.dart';

final class MtgRemoteDataSourceImpl extends RemoteDataSource
    implements MtgRemoteDataSource {
  MtgRemoteDataSourceImpl({required super.dio});

  @override
  Future<SearchCardsResultModel> searchCard({required String name}) async {
    final dynamic result = await performGetRequestApi(
      apiEndpoint: EndpointConstants.mtgSearchEndPoint,
      queryParameters: <String, dynamic>{
        'q': name,
      },
    );
    return SearchCardsResultModel.fromJson(result);
  }
}
