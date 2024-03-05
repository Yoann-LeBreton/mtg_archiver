import 'package:mtg_archiver/features/search/domain/entities/card_entity.dart';

class SearchCardsResultEntity {
  SearchCardsResultEntity({
    required this.totalCards,
    required this.hasMore,
    required this.results,
  });

  int totalCards;
  bool hasMore;
  List<CardEntity> results;

  SearchCardsResultEntity copyWith({
    int? totalCards,
    bool? hasMore,
    List<CardEntity>? results,
  }) {
    return SearchCardsResultEntity(
      totalCards: totalCards ?? this.totalCards,
      hasMore: hasMore ?? this.hasMore,
      results: results ?? this.results,
    );
  }
}
