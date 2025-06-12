import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'steps.freezed.dart';
part 'steps.g.dart';

@freezed
abstract class Steps with _$Steps {
  const factory Steps({
    required String employeeId, // 社員番号
    required String name, // 名前
    required int steps, // 歩数
    required int rank, // 順位
  }) = _Steps;

  factory Steps.fromJson(Map<String, Object?> json) => _$StepsFromJson(json);
}
