// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cards_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchCardsResultModelImpl _$$SearchCardsResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchCardsResultModelImpl(
      totalCards: json['total_cards'] as int? ?? 0,
      hasMore: json['has_more'] as bool? ?? false,
      results:
          (json['data'] as List<dynamic>?)?.map(CardModel.fromJson).toList() ??
              [],
    );

Map<String, dynamic> _$$SearchCardsResultModelImplToJson(
        _$SearchCardsResultModelImpl instance) =>
    <String, dynamic>{
      'total_cards': instance.totalCards,
      'has_more': instance.hasMore,
      'data': instance.results,
    };
