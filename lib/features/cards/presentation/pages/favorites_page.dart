import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/constants/route_list.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/providers/favorites_provider.dart';
import 'package:mtg_archiver/features/cards/presentation/widgets/card_list_widget.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<CardEntity>> favoriteCardsState =
        ref.watch(getLocalCardsProvider);
    ref.listen(getLocalCardsProvider, (_, AsyncValue<List<CardEntity>> next) {
      if (next is AsyncError) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error: ${next.error}')));
      }
    });
    return favoriteCardsState.when(
      data: (List<CardEntity> cards) {
        return Expanded(
          child: cards.isNotEmpty
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
                    ).then((_) => ref.refresh(getLocalCardsProvider));
                  },
                  onNextPage: () {},
                )
              : Center(
                  child: Text(context.translate().no_cards_founds),
                ),
        );
      },
      error: (_, __) => const SizedBox.shrink(),
      loading: () => const Center(child: LoadingWidget()),
    );
  }
}
