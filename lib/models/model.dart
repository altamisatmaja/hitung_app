import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required String firstName,
    required String lastName,
    required int age,
  }) = _Auth;

  factory Auth.fromJson(Map<String, Object?> json)
      => _$AuthFromJson(json);
}