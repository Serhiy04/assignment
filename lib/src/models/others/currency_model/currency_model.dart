class CurrencyModel {
  final int? id;
  final String? currencyName;
  final String? currencyTitleValue;
  final String? currencyValue;
  final String? currencyChanging;
  final String? image;

  CurrencyModel({
    this.id,
    this.currencyChanging,
    this.currencyName,
    this.currencyTitleValue,
    this.currencyValue,
    this.image,
  });

  @override
  String toString() {
    return 'CurrencyModel: [$id, $currencyName, $currencyTitleValue, $currencyValue, $currencyChanging]';
  }
}
