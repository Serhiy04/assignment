import 'package:freezed_annotation/freezed_annotation.dart';

part 'versions_request_model.freezed.dart';
part 'versions_request_model.g.dart';

@freezed
class VersionsRequestModel with _$VersionsRequestModel {
  const factory VersionsRequestModel({
    String? function,
    String? language,
  }) = _VersionsRequestModel;

  factory VersionsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VersionsRequestModelFromJson(json);
}
