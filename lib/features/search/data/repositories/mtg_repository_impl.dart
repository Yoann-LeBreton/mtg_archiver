import 'package:mtg_archiver/features/search/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/search/domain/repositories/mtg_repository.dart';

class MtgRepositoryImpl implements MtgRepository {
  const MtgRepositoryImpl({required this.mtgRemoteDataSource});
  final MtgRemoteDataSource mtgRemoteDataSource;

  @override
  Future<SearchCardsResultModel> searchByName({required String name}) {
    return mtgRemoteDataSource.searchCard(name: name);
  }
}
