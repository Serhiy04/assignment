// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'versions_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionsResponseModel _$VersionsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VersionsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VersionsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  List<String?>? get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsResponseModelCopyWith<VersionsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsResponseModelCopyWith<$Res> {
  factory $VersionsResponseModelCopyWith(VersionsResponseModel value,
          $Res Function(VersionsResponseModel) then) =
      _$VersionsResponseModelCopyWithImpl<$Res>;
  $Res call({int? status, List<String?>? versions});
}

/// @nodoc
class _$VersionsResponseModelCopyWithImpl<$Res>
    implements $VersionsResponseModelCopyWith<$Res> {
  _$VersionsResponseModelCopyWithImpl(this._value, this._then);

  final VersionsResponseModel _value;
  // ignore: unused_field
  final $Res Function(VersionsResponseModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$VersionsResponseModelCopyWith<$Res>
    implements $VersionsResponseModelCopyWith<$Res> {
  factory _$VersionsResponseModelCopyWith(_VersionsResponseModel value,
          $Res Function(_VersionsResponseModel) then) =
      __$VersionsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int? status, List<String?>? versions});
}

/// @nodoc
class __$VersionsResponseModelCopyWithImpl<$Res>
    extends _$VersionsResponseModelCopyWithImpl<$Res>
    implements _$VersionsResponseModelCopyWith<$Res> {
  __$VersionsResponseModelCopyWithImpl(_VersionsResponseModel _value,
      $Res Function(_VersionsResponseModel) _then)
      : super(_value, (v) => _then(v as _VersionsResponseModel));

  @override
  _VersionsResponseModel get _value => super._value as _VersionsResponseModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? versions = freezed,
  }) {
    return _then(_VersionsResponseModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionsResponseModel implements _VersionsResponseModel {
  const _$_VersionsResponseModel({this.status, final List<String?>? versions})
      : _versions = versions;

  factory _$_VersionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsResponseModelFromJson(json);

  @override
  final int? status;
  final List<String?>? _versions;
  @override
  List<String?>? get versions {
    final value = _versions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VersionsResponseModel(status: $status, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionsResponseModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.versions, versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(versions));

  @JsonKey(ignore: true)
  @override
  _$VersionsResponseModelCopyWith<_VersionsResponseModel> get copyWith =>
      __$VersionsResponseModelCopyWithImpl<_VersionsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsResponseModelToJson(this);
  }
}

abstract class _VersionsResponseModel implements VersionsResponseModel {
  const factory _VersionsResponseModel(
      {final int? status,
      final List<String?>? versions}) = _$_VersionsResponseModel;

  factory _VersionsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_VersionsResponseModel.fromJson;

  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  List<String?>? get versions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VersionsResponseModelCopyWith<_VersionsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
