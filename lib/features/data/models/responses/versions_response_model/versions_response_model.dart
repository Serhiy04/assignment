import 'package:assignment/features/domain/entities/responses/versions_response_entity/versions_response_entity.dart';

class VersionsResponseModel extends VersionsResponseEntity {
  const VersionsResponseModel({
    int? status,
    List<String> versions = const [],
  }) : super(versions: versions, status: status);

  factory VersionsResponseModel.fromJson(Map<String, dynamic> json) {
    return VersionsResponseModel(
      status: json['status'],
      versions: List<String>.from(json['versions'].map((version) => version)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'versions': List<dynamic>.from(versions.map((version) => version)),
    };
  }
}
