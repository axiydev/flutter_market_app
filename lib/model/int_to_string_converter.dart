import 'package:freezed_annotation/freezed_annotation.dart';

class IntToStringConverter implements JsonConverter<String, int> {
  const IntToStringConverter();
  @override
  String fromJson(int json) {
    return '$json';
  }

  @override
  int toJson(String object) {
    return int.parse(object);
  }
}
