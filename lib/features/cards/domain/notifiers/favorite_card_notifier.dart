import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_card_notifier.g.dart';

@riverpod
class FavoriteCardNotif extends _$FavoriteCardNotif {
  @override
  bool build(String cardId) {
    isLocalCard();
    return false;
  }

  Future<void> isLocalCard() async {
    final Result<bool> result =
        await ref.watch(mtgRepositoryProvider).isLocalCard(cardId: cardId);
    state = result.when(
      success: (bool isLocal) => isLocal,
      failure: (Exception ex) => throw ex,
    );
  }

  Future<void> saveLocalCard(CardEntity card) async {
    final Result<void> result =
        await ref.watch(mtgRepositoryProvider).saveLocalCard(card: card);
    state = result.when(
      success: (_) => true,
      failure: (Exception ex) => throw ex,
    );
  }

  Future<void> deleteLocalCard() async {
    final Result<void> result =
        await ref.watch(mtgRepositoryProvider).removeLocalCard(cardId: cardId);
    state = result.when(
      success: (_) => false,
      failure: (Exception ex) => throw ex,
    );
  }
}
