import 'package:freezed_annotation/freezed_annotation.dart';

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
