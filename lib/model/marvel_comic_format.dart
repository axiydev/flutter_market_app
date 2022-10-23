import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum MarvelComicFormat {
  @JsonValue('Comic')
  comic,
  @JsonValue('Magazine')
  magazine,
  @JsonValue('TradePaperBack')
  tradePaperBack,
  @JsonValue('HardCover')
  hardCover,
  @JsonValue('Digest')
  digest,
  @JsonValue('GraphicNovel')
  graphicNovel,
  @JsonValue('DigitalComic')
  digitalComic,
  @JsonValue('InfiniteComic')
  infiniteComic,
  @JsonValue('Unknown')
  unknown
}
