import 'package:equatable/equatable.dart';

class VersionsResponseEntity extends Equatable {
  final int? status;
  final List<String> versions;

  const VersionsResponseEntity({this.status, this.versions = const []});

  @override
  List<Object?> get props => [status, versions];

  @override
  bool? get stringify => true;
}
