import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/constants/route_list.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_filter_entity.dart';
import 'package:mtg_archiver/features/cards/domain/notifiers/search_mtg_cards_notifier.dart';
import 'package:mtg_archiver/features/cards/domain/notifiers/search_mtg_state.dart';
import 'package:mtg_archiver/features/cards/domain/providers/search_provider.dart';
import 'package:mtg_archiver/features/cards/presentation/widgets/card_list_widget.dart';
import 'package:mtg_archiver/features/cards/presentation/widgets/filter_modal_bottom_widget.dart';
import 'package:mtg_archiver/features/cards/presentation/widgets/search_bar_widget.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  bool _loadingNext = false;

  @override
  Widget build(BuildContext context) {
    final SearchMtgState searchState = ref.watch(searchMtgCardsNotifProvider);
    initListeners();

    return Column(
      children: <Widget>[
        Material(
          elevation: 8,
          shadowColor: AppColors.paleBlue,
          child: Container(
            padding: EdgeInsets.all(Spacing.regular.value),
            child: SearchBarWidget(
              initialValue: ref.watch(
                searchProvider
                    .select((SearchFilterEntity value) => value.textSearch),
              ),
              onFilterClick: () {
                FilterModalBottomWidget.show(
                  context: context,
                  filter: ref.read(searchProvider.notifier).state,
                  onFilterChanged: (SearchFilterEntity filterEdited) {
                    ref.read(searchProvider.notifier).state = filterEdited;
                    ref
                        .read(searchMtgCardsNotifProvider.notifier)
                        .searchMtgCards();
                  },
                );
              },
              onSubmit: (String? searchText) {
                final SearchFilterEntity previous =
                    ref.read(searchProvider.notifier).state;
                ref.read(searchProvider.notifier).state = previous.copyWith(
                  textSearch: searchText ?? '',
                );
                if (searchText != null && searchText.trim().isNotEmpty) {
                  ref
                      .read(searchMtgCardsNotifProvider.notifier)
                      .searchMtgCards();
                } else {
                  ref.read(searchMtgCardsNotifProvider.notifier).clearSearch();
                }
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
                        onCardClick: (
                          String cardId,
                          String cardName,
                        ) {
                          Navigator.of(context).pushNamed(
                            RouteList.cardDetails,
                            arguments: <String, String>{
                              RouteList.argCardName: cardName,
                              RouteList.argCardId: cardId,
                            },
                          );
                        },
                        onNextPage: () {
                          if (hasMore &&
                              ref
                                  .read(searchProvider.notifier)
                                  .state
                                  .textSearch
                                  .isNotEmpty &&
                              _loadingNext == false) {
                            ref
                                .read(
                                  searchMtgCardsNotifProvider.notifier,
                                )
                                .searchNext(
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

  void initListeners() {
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
  }
}
