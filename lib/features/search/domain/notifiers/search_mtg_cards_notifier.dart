import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/search/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/search/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/search/domain/notifiers/search_mtg_state.dart';
import 'package:mtg_archiver/features/search/domain/repositories/mtg_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_mtg_cards_notifier.g.dart';

@riverpod
class SearchMtgCardsNotif extends _$SearchMtgCardsNotif {
  @override
  SearchMtgState build() {
    mtgRepository = ref.read(mtgRepositoryProvider);
    return const SearchMtgState.initial(numPage: 0);
  }

  late MtgRepository mtgRepository;

  Future<void> searchMtgCards({
    required String searchText,
    bool? includeMultiLingual,
    bool? showOtherType,
    String? order,
    String? sortDirection,
  }) async {
    final int previousPage = state.numPage;
    state = SearchMtgState.loading(numPage: previousPage);
    final Result<SearchCardsResultEntity> result =
        await mtgRepository.searchByName(
      searchText: searchText,
      numPage: 1,
      includeMultiLingual: includeMultiLingual,
      showOtherType: showOtherType,
      order: order,
      sortDirection: sortDirection,
    );
    state = result.when(
      success: (SearchCardsResultEntity searchResult) => SearchMtgState.success(
        hasMore: searchResult.hasMore,
        cards: searchResult.results,
        numPage: 1,
      ),
      failure: (Exception exception) =>
          SearchMtgState.error(exception: exception, numPage: previousPage),
    );
  }

  Future<void> searchNext({
    required String searchText,
    required int numPage,
    bool? includeMultiLingual,
    bool? showOtherType,
    String? order,
    String? sortDirection,
  }) async {
    state.whenOrNull(
      success: (
        _,
        List<CardEntity> previousCards,
        __,
      ) async {
        final int previousPage = state.numPage;
        final Result<SearchCardsResultEntity> result =
            await mtgRepository.searchByName(
          searchText: searchText,
          numPage: numPage,
          includeMultiLingual: includeMultiLingual,
          showOtherType: showOtherType,
          order: order,
          sortDirection: sortDirection,
        );
        await Future.delayed(Duration(seconds: 1));
        state = result.when(
          success: (SearchCardsResultEntity searchResult) =>
              SearchMtgState.success(
            hasMore: searchResult.hasMore,
            cards: <CardEntity>[...previousCards, ...searchResult.results],
            numPage: numPage,
          ),
          failure: (Exception exception) =>
              SearchMtgState.error(exception: exception, numPage: previousPage),
        );
      },
    );
  }
}
