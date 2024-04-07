import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mtg_archiver/features/cards/domain/entities/image_uris_entity.dart';

part 'image_uris_model.freezed.dart';
part 'image_uris_model.g.dart';

@freezed
class ImageUrisModel with _$ImageUrisModel {
  const factory ImageUrisModel({
    String? small,
    String? normal,
    String? large,
    String? png,
    @JsonKey(name: 'art_crop') String? artCrop,
    @JsonKey(name: 'border_crop') String? borderCrop,
  }) = _ImageUrisModel;

  factory ImageUrisModel.fromJson(dynamic json) =>
      _$ImageUrisModelFromJson(json);
}

extension ImageUrisModelX on ImageUrisModel {
  ImageUrisEntity toDomain() => ImageUrisEntity(
        small: small,
        large: large,
        png: png,
        artCrop: artCrop,
        borderCrop: borderCrop,
      );
}
