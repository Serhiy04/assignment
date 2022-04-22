import 'package:equatable/equatable.dart';

class CurrencyEntity extends Equatable {
  final int? id;
  final String? currencyName;
  final String? currencyTitleValue;
  final String? currencyValue;
  final String? currencyChanging;
  final String? image;

  const CurrencyEntity({
    this.id,
    this.currencyChanging,
    this.currencyName,
    this.currencyTitleValue,
    this.currencyValue,
    this.image,
  });

  @override
  List<Object?> get props => [
        id,
        currencyName,
        currencyTitleValue,
        currencyValue,
        currencyChanging,
        image
      ];

  @override
  bool? get stringify => true;
}
