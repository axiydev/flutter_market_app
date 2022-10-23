import 'package:flutter_market_app/model/int_to_string_converter.dart';
import 'package:flutter_market_app/model/marvel_comic_format.dart';
import 'package:flutter_market_app/model/marvel_summary/marvel_story_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'other_model.freezed.dart';
part 'other_model.g.dart';

@freezed
class MarvelComic with _$MarvelComic {
  const factory MarvelComic(
      {
      // ignore: invalid_annotation_target
      @JsonKey(name: 'id')
      @IntToStringConverter()
          required int id,
      // ignore: invalid_annotation_target
      @JsonKey(name: 'digitalId')
          int? digitalId,
      // ignore: invalid_annotation_target
      @JsonKey(name: 'title')
          String? title,
      // ignore: invalid_annotation_target
      @JsonKey(name: 'modified')
          DateTime? modified,
      @Default(<String>[])
          List<String> images,
      // ignore: invalid_annotation_target
      @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
      @Default(MarvelComicFormat.unknown)
          MarvelComicFormat? format,
      // ignore: invalid_annotation_target
      @JsonKey(name: 'metadata')
      @Default(MarvelStorySummary.cover())
          MarvelStorySummary metadata}) = _MarvelComic;

  factory MarvelComic.fromJson(Map<String, dynamic> json) =>
      _$MarvelComicFromJson(json);
}
