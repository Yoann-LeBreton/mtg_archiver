import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';

part 'search_mtg_state.freezed.dart';

@freezed
class SearchMtgState with _$SearchMtgState {
  const factory SearchMtgState.initial({
    required int numPage,
    @Default(true) bool hasMore,
  }) = _SearchMtgInital;

  const factory SearchMtgState.loading({
    required int numPage,
    @Default(true) bool hasMore,
  }) = _SearchMtgLoading;

  const factory SearchMtgState.success({
    required int numPage,
    required List<CardEntity> cards,
    @Default(true) bool hasMore,
  }) = _SearchMtgSuccess;

  const factory SearchMtgState.error({
    required int numPage,
    required Exception exception,
    @Default(true) bool hasMore,
  }) = _SearchMtgError;
}
