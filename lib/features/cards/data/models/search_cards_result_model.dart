import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_cards_result_entity.dart';

part 'search_cards_result_model.freezed.dart';
part 'search_cards_result_model.g.dart';

@freezed
class SearchCardsResultModel with _$SearchCardsResultModel {
  const factory SearchCardsResultModel({
    @JsonKey(name: 'total_cards', defaultValue: 0) required int totalCards,
    @JsonKey(name: 'has_more', defaultValue: false) required bool hasMore,
    @JsonKey(name: 'data', defaultValue: <CardModel>[])
    required List<CardModel> results,
  }) = _SearchCardsResultModel;

  factory SearchCardsResultModel.fromJson(dynamic json) =>
      _$SearchCardsResultModelFromJson(json);
}

extension SearchCardsResultModelX on SearchCardsResultModel {
  SearchCardsResultEntity toDomain() => SearchCardsResultEntity(
        totalCards: totalCards,
        hasMore: hasMore,
        results: results.map((CardModel result) => result.toDomain()).toList(),
      );
}
