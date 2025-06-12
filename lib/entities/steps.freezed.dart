// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Steps implements DiagnosticableTreeMixin {

 String get employeeId;// 社員番号
 String get name;// 名前
 int get steps;// 歩数
 int get rank;
/// Create a copy of Steps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepsCopyWith<Steps> get copyWith => _$StepsCopyWithImpl<Steps>(this as Steps, _$identity);

  /// Serializes this Steps to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Steps'))
    ..add(DiagnosticsProperty('employeeId', employeeId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('steps', steps))..add(DiagnosticsProperty('rank', rank));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Steps&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.steps, steps) || other.steps == steps)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,name,steps,rank);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Steps(employeeId: $employeeId, name: $name, steps: $steps, rank: $rank)';
}


}

/// @nodoc
abstract mixin class $StepsCopyWith<$Res>  {
  factory $StepsCopyWith(Steps value, $Res Function(Steps) _then) = _$StepsCopyWithImpl;
@useResult
$Res call({
 String employeeId, String name, int steps, int rank
});




}
/// @nodoc
class _$StepsCopyWithImpl<$Res>
    implements $StepsCopyWith<$Res> {
  _$StepsCopyWithImpl(this._self, this._then);

  final Steps _self;
  final $Res Function(Steps) _then;

/// Create a copy of Steps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = null,Object? name = null,Object? steps = null,Object? rank = null,}) {
  return _then(_self.copyWith(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as int,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Steps with DiagnosticableTreeMixin implements Steps {
  const _Steps({required this.employeeId, required this.name, required this.steps, required this.rank});
  factory _Steps.fromJson(Map<String, dynamic> json) => _$StepsFromJson(json);

@override final  String employeeId;
// 社員番号
@override final  String name;
// 名前
@override final  int steps;
// 歩数
@override final  int rank;

/// Create a copy of Steps
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepsCopyWith<_Steps> get copyWith => __$StepsCopyWithImpl<_Steps>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Steps'))
    ..add(DiagnosticsProperty('employeeId', employeeId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('steps', steps))..add(DiagnosticsProperty('rank', rank));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Steps&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.steps, steps) || other.steps == steps)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,name,steps,rank);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Steps(employeeId: $employeeId, name: $name, steps: $steps, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$StepsCopyWith<$Res> implements $StepsCopyWith<$Res> {
  factory _$StepsCopyWith(_Steps value, $Res Function(_Steps) _then) = __$StepsCopyWithImpl;
@override @useResult
$Res call({
 String employeeId, String name, int steps, int rank
});




}
/// @nodoc
class __$StepsCopyWithImpl<$Res>
    implements _$StepsCopyWith<$Res> {
  __$StepsCopyWithImpl(this._self, this._then);

  final _Steps _self;
  final $Res Function(_Steps) _then;

/// Create a copy of Steps
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = null,Object? name = null,Object? steps = null,Object? rank = null,}) {
  return _then(_Steps(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as int,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
