import 'package:equatable/equatable.dart';

class VersionsRequestEntity extends Equatable {
  final String? function;
  final String? language;

  const VersionsRequestEntity({this.function, this.language});

  @override
  List<Object?> get props => [function, language];

  @override
  bool? get stringify => true;
}
