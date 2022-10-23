// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarvelComic _$$_MarvelComicFromJson(Map<String, dynamic> json) =>
    _$_MarvelComic(
      id: json['id'] as int,
      digitalId: json['digitalId'] as int?,
      title: json['title'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      format: $enumDecodeNullable(_$MarvelComicFormatEnumMap, json['format'],
              unknownValue: MarvelComicFormat.unknown) ??
          MarvelComicFormat.unknown,
      metadata: json['metadata'] == null
          ? const MarvelStorySummary.cover()
          : MarvelStorySummary.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MarvelComicToJson(_$_MarvelComic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'digitalId': instance.digitalId,
      'title': instance.title,
      'modified': instance.modified?.toIso8601String(),
      'images': instance.images,
      'format': _$MarvelComicFormatEnumMap[instance.format],
      'metadata': instance.metadata,
    };

const _$MarvelComicFormatEnumMap = {
  MarvelComicFormat.comic: 'Comic',
  MarvelComicFormat.magazine: 'Magazine',
  MarvelComicFormat.tradePaperBack: 'TradePaperBack',
  MarvelComicFormat.hardCover: 'HardCover',
  MarvelComicFormat.digest: 'Digest',
  MarvelComicFormat.graphicNovel: 'GraphicNovel',
  MarvelComicFormat.digitalComic: 'DigitalComic',
  MarvelComicFormat.infiniteComic: 'InfiniteComic',
  MarvelComicFormat.unknown: 'Unknown',
};
