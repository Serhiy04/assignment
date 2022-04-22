import 'package:assignment/features/domain/entities/requests/versions_request_entity/versions_request_entity.dart';

class VersionsRequestModel extends VersionsRequestEntity {
  const VersionsRequestModel({
    final String? function,
    final String? language,
  }) : super(function: function, language: language);

  factory VersionsRequestModel.fromJson(Map<String, dynamic> json) {
    return VersionsRequestModel(
      function: json['status'],
      language: json['language'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'function': function,
      'language': language,
    };
  }
}
