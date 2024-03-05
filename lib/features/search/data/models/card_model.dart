import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mtg_archiver/features/search/domain/entities/card_entity.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'released_at', defaultValue: '') required String releaseDate,
  }) = _CardModel;

  factory CardModel.fromJson(dynamic json) => _$CardModelFromJson(json);
}

extension CardModelX on CardModel {
  CardEntity toDomain() =>
      CardEntity(id: id, name: name, releaseDate: releaseDate);
}
