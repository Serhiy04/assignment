import 'package:freezed_annotation/freezed_annotation.dart';

part 'versions_response_model.freezed.dart';
part 'versions_response_model.g.dart';

@freezed
class VersionsResponseModel with _$VersionsResponseModel {
  const factory VersionsResponseModel({
    int? status,
    List<String?>? versions,
  }) = _VersionsResponseModel;

  factory VersionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VersionsResponseModelFromJson(json);
}
