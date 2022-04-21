// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionsResponseModel _$$_VersionsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_VersionsResponseModel(
      status: json['status'] as int?,
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_VersionsResponseModelToJson(
        _$_VersionsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'versions': instance.versions,
    };
