// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'other_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarvelComic _$MarvelComicFromJson(Map<String, dynamic> json) {
  return _MarvelComic.fromJson(json);
}

/// @nodoc
mixin _$MarvelComic {
// ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  @IntToStringConverter()
  int get id =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'digitalId')
  int? get digitalId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'title')
  String? get title =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'modified')
  DateTime? get modified => throw _privateConstructorUsedError;
  List<String> get images =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
  MarvelComicFormat? get format =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'metadata')
  MarvelStorySummary get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelComicCopyWith<MarvelComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelComicCopyWith<$Res> {
  factory $MarvelComicCopyWith(
          MarvelComic value, $Res Function(MarvelComic) then) =
      _$MarvelComicCopyWithImpl<$Res, MarvelComic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
      @IntToStringConverter()
          int id,
      @JsonKey(name: 'digitalId')
          int? digitalId,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'modified')
          DateTime? modified,
      List<String> images,
      @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
          MarvelComicFormat? format,
      @JsonKey(name: 'metadata')
          MarvelStorySummary metadata});

  $MarvelStorySummaryCopyWith<$Res> get metadata;
}

/// @nodoc
class _$MarvelComicCopyWithImpl<$Res, $Val extends MarvelComic>
    implements $MarvelComicCopyWith<$Res> {
  _$MarvelComicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? modified = freezed,
    Object? images = null,
    Object? format = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      digitalId: freezed == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as MarvelComicFormat?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MarvelStorySummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarvelStorySummaryCopyWith<$Res> get metadata {
    return $MarvelStorySummaryCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarvelComicCopyWith<$Res>
    implements $MarvelComicCopyWith<$Res> {
  factory _$$_MarvelComicCopyWith(
          _$_MarvelComic value, $Res Function(_$_MarvelComic) then) =
      __$$_MarvelComicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
      @IntToStringConverter()
          int id,
      @JsonKey(name: 'digitalId')
          int? digitalId,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'modified')
          DateTime? modified,
      List<String> images,
      @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
          MarvelComicFormat? format,
      @JsonKey(name: 'metadata')
          MarvelStorySummary metadata});

  @override
  $MarvelStorySummaryCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_MarvelComicCopyWithImpl<$Res>
    extends _$MarvelComicCopyWithImpl<$Res, _$_MarvelComic>
    implements _$$_MarvelComicCopyWith<$Res> {
  __$$_MarvelComicCopyWithImpl(
      _$_MarvelComic _value, $Res Function(_$_MarvelComic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? modified = freezed,
    Object? images = null,
    Object? format = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_MarvelComic(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      digitalId: freezed == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as MarvelComicFormat?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MarvelStorySummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarvelComic implements _MarvelComic {
  const _$_MarvelComic(
      {@JsonKey(name: 'id')
      @IntToStringConverter()
          required this.id,
      @JsonKey(name: 'digitalId')
          this.digitalId,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'modified')
          this.modified,
      final List<String> images = const <String>[],
      @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
          this.format = MarvelComicFormat.unknown,
      @JsonKey(name: 'metadata')
          this.metadata = const MarvelStorySummary.cover()})
      : _images = images;

  factory _$_MarvelComic.fromJson(Map<String, dynamic> json) =>
      _$$_MarvelComicFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'id')
  @IntToStringConverter()
  final int id;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'digitalId')
  final int? digitalId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'title')
  final String? title;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'modified')
  final DateTime? modified;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
  final MarvelComicFormat? format;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'metadata')
  final MarvelStorySummary metadata;

  @override
  String toString() {
    return 'MarvelComic(id: $id, digitalId: $digitalId, title: $title, modified: $modified, images: $images, format: $format, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarvelComic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.digitalId, digitalId) ||
                other.digitalId == digitalId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, digitalId, title, modified,
      const DeepCollectionEquality().hash(_images), format, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarvelComicCopyWith<_$_MarvelComic> get copyWith =>
      __$$_MarvelComicCopyWithImpl<_$_MarvelComic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarvelComicToJson(
      this,
    );
  }
}

abstract class _MarvelComic implements MarvelComic {
  const factory _MarvelComic(
      {@JsonKey(name: 'id')
      @IntToStringConverter()
          required final int id,
      @JsonKey(name: 'digitalId')
          final int? digitalId,
      @JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'modified')
          final DateTime? modified,
      final List<String> images,
      @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
          final MarvelComicFormat? format,
      @JsonKey(name: 'metadata')
          final MarvelStorySummary metadata}) = _$_MarvelComic;

  factory _MarvelComic.fromJson(Map<String, dynamic> json) =
      _$_MarvelComic.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  @IntToStringConverter()
  int get id;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'digitalId')
  int? get digitalId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'title')
  String? get title;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'modified')
  DateTime? get modified;
  @override
  List<String> get images;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'format', unknownEnumValue: MarvelComicFormat.unknown)
  MarvelComicFormat? get format;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'metadata')
  MarvelStorySummary get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_MarvelComicCopyWith<_$_MarvelComic> get copyWith =>
      throw _privateConstructorUsedError;
}
