// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'versions_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionsRequestModel _$VersionsRequestModelFromJson(Map<String, dynamic> json) {
  return _VersionsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VersionsRequestModel {
  String? get function => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsRequestModelCopyWith<VersionsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsRequestModelCopyWith<$Res> {
  factory $VersionsRequestModelCopyWith(VersionsRequestModel value,
          $Res Function(VersionsRequestModel) then) =
      _$VersionsRequestModelCopyWithImpl<$Res>;
  $Res call({String? function, String? language});
}

/// @nodoc
class _$VersionsRequestModelCopyWithImpl<$Res>
    implements $VersionsRequestModelCopyWith<$Res> {
  _$VersionsRequestModelCopyWithImpl(this._value, this._then);

  final VersionsRequestModel _value;
  // ignore: unused_field
  final $Res Function(VersionsRequestModel) _then;

  @override
  $Res call({
    Object? function = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      function: function == freezed
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VersionsRequestModelCopyWith<$Res>
    implements $VersionsRequestModelCopyWith<$Res> {
  factory _$VersionsRequestModelCopyWith(_VersionsRequestModel value,
          $Res Function(_VersionsRequestModel) then) =
      __$VersionsRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({String? function, String? language});
}

/// @nodoc
class __$VersionsRequestModelCopyWithImpl<$Res>
    extends _$VersionsRequestModelCopyWithImpl<$Res>
    implements _$VersionsRequestModelCopyWith<$Res> {
  __$VersionsRequestModelCopyWithImpl(
      _VersionsRequestModel _value, $Res Function(_VersionsRequestModel) _then)
      : super(_value, (v) => _then(v as _VersionsRequestModel));

  @override
  _VersionsRequestModel get _value => super._value as _VersionsRequestModel;

  @override
  $Res call({
    Object? function = freezed,
    Object? language = freezed,
  }) {
    return _then(_VersionsRequestModel(
      function: function == freezed
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionsRequestModel implements _VersionsRequestModel {
  const _$_VersionsRequestModel({this.function, this.language});

  factory _$_VersionsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsRequestModelFromJson(json);

  @override
  final String? function;
  @override
  final String? language;

  @override
  String toString() {
    return 'VersionsRequestModel(function: $function, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionsRequestModel &&
            const DeepCollectionEquality().equals(other.function, function) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(function),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$VersionsRequestModelCopyWith<_VersionsRequestModel> get copyWith =>
      __$VersionsRequestModelCopyWithImpl<_VersionsRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsRequestModelToJson(this);
  }
}

abstract class _VersionsRequestModel implements VersionsRequestModel {
  const factory _VersionsRequestModel(
      {final String? function,
      final String? language}) = _$_VersionsRequestModel;

  factory _VersionsRequestModel.fromJson(Map<String, dynamic> json) =
      _$_VersionsRequestModel.fromJson;

  @override
  String? get function => throw _privateConstructorUsedError;
  @override
  String? get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VersionsRequestModelCopyWith<_VersionsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
