import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_filter_entity.dart';
import 'package:mtg_archiver/features/cards/domain/notifiers/search_mtg_state.dart';
import 'package:mtg_archiver/features/cards/domain/providers/search_provider.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_mtg_cards_notifier.g.dart';

@Riverpod(keepAlive: true)
class SearchMtgCardsNotif extends _$SearchMtgCardsNotif {
  @override
  SearchMtgState build() => const SearchMtgState.initial(numPage: 0);

  Future<void> searchMtgCards() async {
    final SearchFilterEntity searchFilter = ref.read(searchProvider);
    final int previousPage = state.numPage;
    state = SearchMtgState.loading(numPage: previousPage);
    final Result<SearchCardsResultEntity> result =
        await ref.read(mtgRepositoryProvider).searchByName(
              searchText: searchFilter.textSearch,
              numPage: 1,
              includeMultiLingual: searchFilter.showMultiLingual,
              showOtherType: searchFilter.showOtherTypes,
              order: searchFilter.sortType.name,
              sortDirection: searchFilter.sortMode.name,
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
    required int numPage,
  }) async {
    final SearchFilterEntity searchFilter = ref.read(searchProvider);
    state.whenOrNull(
      success: (
        _,
        List<CardEntity> previousCards,
        __,
      ) async {
        final int previousPage = state.numPage;
        final Result<SearchCardsResultEntity> result =
            await ref.read(mtgRepositoryProvider).searchByName(
                  searchText: searchFilter.textSearch,
                  numPage: numPage,
                  includeMultiLingual: searchFilter.showMultiLingual,
                  showOtherType: searchFilter.showOtherTypes,
                  order: searchFilter.sortType.name,
                  sortDirection: searchFilter.sortMode.name,
                );
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

  Future<void> clearSearch() async {
    state = SearchMtgState.success(numPage: 0, cards: List<CardEntity>.empty());
  }
}
