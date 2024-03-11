import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/search/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/search/domain/entities/search_filter_entity.dart';
import 'package:mtg_archiver/features/search/domain/notifiers/search_mtg_cards_notifier.dart';
import 'package:mtg_archiver/features/search/domain/notifiers/search_mtg_state.dart';
import 'package:mtg_archiver/features/search/presentation/widgets/card_list_widget.dart';
import 'package:mtg_archiver/features/search/presentation/widgets/filter_modal_bottom_widget.dart';
import 'package:mtg_archiver/features/search/presentation/widgets/search_bar_widget.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  String _searchText = '';
  bool _loadingNext = false;
  SearchFilterEntity _filter = const SearchFilterEntity();

  @override
  Widget build(BuildContext context) {
    final SearchMtgState searchState = ref.watch(searchMtgCardsNotifProvider);
    ref.listen(searchMtgCardsNotifProvider, (_, SearchMtgState next) {
      next.whenOrNull(
        success: (_, __, ___) {
          setState(() {
            _loadingNext = false;
          });
        },
        error: (_, __, ___) {
          setState(() {
            _loadingNext = false;
          });
        },
      );
    });

    return Column(
      children: <Widget>[
        Material(
          elevation: 8,
          shadowColor: AppColors.paleBlue,
          child: Container(
            padding: EdgeInsets.all(Spacing.regular.value),
            child: SearchBarWidget(
              onFilterClick: () {
                FilterModalBottomWidget.show(
                  context: context,
                  filter: _filter,
                  onFilterChanged: (SearchFilterEntity filterEdited) {
                    _filter = filterEdited;
                    ref
                        .read(searchMtgCardsNotifProvider.notifier)
                        .searchMtgCards(
                          searchText: _searchText,
                          includeMultiLingual: _filter.showMultiLingual,
                          showOtherType: _filter.showOtherTypes,
                          order: _filter.sortType.name,
                          sortDirection: _filter.sortMode.name,
                        );
                  },
                );
              },
              onSubmit: (String? searchText) {
                _searchText = searchText ?? '';
                ref
                    .read(searchMtgCardsNotifProvider.notifier)
                    .searchMtgCards(searchText: _searchText);
              },
              searchLabel: context.translate().search_cards,
            ),
          ),
        ),
        AppGap.regularHeight(),
        Expanded(
          child: searchState.when(
            error: (
              int numPage,
              Exception exception,
              bool hasMore,
            ) =>
                Center(
              child: Text(exception.toString()),
            ),
            initial: (int numPage, bool hasMore) => Center(
              child: Text(context.translate().search_cards),
            ),
            loading: (_, __) => const LoadingWidget(),
            success: (
              int numPage,
              List<CardEntity> cards,
              bool hasMore,
            ) =>
                cards.isNotEmpty
                    ? CardListWidget(
                        cards: cards,
                        onRefresh: () async {},
                        onNextPage: () {
                          if (hasMore &&
                              _searchText.isNotEmpty &&
                              _loadingNext == false) {
                            ref
                                .read(
                                  searchMtgCardsNotifProvider.notifier,
                                )
                                .searchNext(
                                  searchText: _searchText,
                                  numPage: numPage + 1,
                                );
                            setState(() {
                              _loadingNext = true;
                            });
                          }
                        },
                      )
                    : Center(
                        child: Text(context.translate().no_cards_founds),
                      ),
          ),
        ),
        (_loadingNext) ? const LoadingWidget() : const SizedBox.shrink(),
      ],
    );
  }
}
