import 'package:mtg_archiver/features/search/data/datasources/mtg_remote_data_source.dart';
import 'package:mtg_archiver/features/search/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/search/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/search/domain/repositories/mtg_repository.dart';

class MtgRepositoryImpl implements MtgRepository {
  const MtgRepositoryImpl({required this.mtgRemoteDataSource});
  final MtgRemoteDataSource mtgRemoteDataSource;

  @override
  Future<SearchCardsResultEntity> searchByName({required String name}) async {
    final SearchCardsResultModel result =
        await mtgRemoteDataSource.searchCard(name: name);
    return result.toDomain();
  }
}
