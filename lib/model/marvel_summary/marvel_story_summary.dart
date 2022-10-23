import 'package:freezed_annotation/freezed_annotation.dart';

part 'marvel_story_summary.freezed.dart';
part 'marvel_story_summary.g.dart';

/*
custom typeda @Freezed(unionKey:'type') 
agar oddiy bersak @freezed korinishida annotatsiyani
beramiz unda u avtomatik tarzda runtimeType boyicha boladi
*/
@Freezed(unionKey: 'type')
class MarvelStorySummary with _$MarvelStorySummary {
  @FreezedUnionValue('cover')
  const factory MarvelStorySummary.cover({
    @JsonKey(name: 'resourceURI') String? url,
    @JsonKey(name: 'name') String? name,
  }) = _CoverMarvelStorySummary;
  @FreezedUnionValue('interiorStory')
  const factory MarvelStorySummary.interior({
    @JsonKey(name: 'resourceURI') String? url,
    @JsonKey(name: 'name') String? name,
  }) = _InteriorMarvelStorySummary;

  @FreezedUnionValue('promo')
  const factory MarvelStorySummary.promo({
    @JsonKey(name: 'resourceURI') String? url,
    @JsonKey(name: 'name') String? name,
  }) = _PromoMarvelStorySummary;

  factory MarvelStorySummary.fromJson(Map<String, dynamic> json) =>
      _$MarvelStorySummaryFromJson(_appendRuntimeType(json));
}

Map<String, dynamic> _appendRuntimeType(Map<String, dynamic> json) =>
    json..['type'] = _runtimeTypesMap[json['role']] ?? 'other';
const _runtimeTypesMap = {
  'cover': 'cover',
  'interiorStory': 'interiorStory',
  'promo': 'promo'
};
