import 'package:mtg_archiver/features/search/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/search/domain/repositories/mtg_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_mtg_cards_provider.g.dart';

@riverpod
Future<SearchCardsResultEntity> searchMtgCards(
  SearchMtgCardsRef ref, {
  required String searchText,
}) async {
  final MtgRepository mtgRepository = ref.watch(mtgRepositoryProvider);
  return mtgRepository.searchByName(name: searchText);
}
