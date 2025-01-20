class CurrencyModel {
  late String symbol;
  late String name;
  late String symbolNative;
  late int decimalDigits;
  late int rounding;
  late String code;
  late String namePlural;

  CurrencyModel({
    required this.symbol,
    required this.name,
    required this.symbolNative,
    required this.decimalDigits,
    required this.rounding,
    required this.code,
    required this.namePlural,
  });

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    name = json['name'];
    symbolNative = json['symbol_native'];
    decimalDigits = json['decimal_digits'];
    rounding = (json['rounding']).toInt();
    code = json['code'];
    namePlural = json['name_plural'];
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'name': name,
      'symbol_native': symbolNative,
      'decimal_digits': decimalDigits,
      'rounding': rounding,
      'code': code,
      'name_plural': namePlural,
    };
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
