import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mtg_archiver/features/cards/domain/entities/image_uris_entity.dart';

part 'image_uris_model.freezed.dart';
part 'image_uris_model.g.dart';

@freezed
class ImageUrisModel with _$ImageUrisModel {
  @HiveType(typeId: 1)
  const factory ImageUrisModel({
    @HiveField(0) String? small,
    @HiveField(1) String? normal,
    @HiveField(2) String? large,
    @HiveField(3) String? png,
    @HiveField(4) @JsonKey(name: 'art_crop') String? artCrop,
    @HiveField(5) @JsonKey(name: 'border_crop') String? borderCrop,
  }) = _ImageUrisModel;

  factory ImageUrisModel.fromJson(dynamic json) =>
      _$ImageUrisModelFromJson(json);

  factory ImageUrisModel.fromDomain({required ImageUrisEntity entity}) =>
      ImageUrisModel(
        small: entity.small,
        large: entity.large,
        png: entity.png,
        artCrop: entity.artCrop,
        borderCrop: entity.borderCrop,
      );
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
