import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_provider.g.dart';

@riverpod
Future<List<CardEntity>> getLocalCards(GetLocalCardsRef ref) async {
  final Result<List<CardEntity>> result =
      await ref.watch(mtgRepositoryProvider).getLocalCards();
  return result.when(
    success: (List<CardEntity> data) => data,
    failure: (Exception ex) => throw ex,
  );
}
