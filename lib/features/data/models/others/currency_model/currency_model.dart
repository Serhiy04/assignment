import 'package:assignment/features/domain/entities/others/currency_entity/currency_entity.dart';

class CurrencyModel extends CurrencyEntity {
  const CurrencyModel({
    final int? id,
    final String? currencyName,
    final String? currencyTitleValue,
    final String? currencyValue,
    final String? currencyChanging,
    final String? image,
  }) : super(
          id: id,
          currencyName: currencyName,
          currencyTitleValue: currencyTitleValue,
          currencyValue: currencyValue,
          currencyChanging: currencyChanging,
          image: image,
        );

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      id: json['id'],
      currencyName: json['currencyName'],
      currencyTitleValue: json['currencyTitleValue'],
      currencyValue: json['currencyValue'],
      currencyChanging: json['currencyChanging'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'currencyName': currencyName,
      'currencyTitleValue': currencyTitleValue,
      'currencyValue': currencyValue,
      'currencyChanging': currencyChanging,
      'image': image,
    };
  }
}
