import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/core/error/exceptions.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_provider.g.dart';

@riverpod
Future<CardEntity> details(DetailsRef ref, String cardId) async {
  final Result<CardEntity> result =
      await ref.watch(mtgRepositoryProvider).getCardById(cardId: cardId);
  return result.when(
    success: (CardEntity data) {
      return data;
    },
    failure: (Exception failure) {
      throw ServerException();
    },
  );
}
