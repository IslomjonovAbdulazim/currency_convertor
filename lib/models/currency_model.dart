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
    symbolNative = json['symbolNative'];
    decimalDigits = json['decimalDigits'];
    rounding = json['rounding'];
    code = json['code'];
    namePlural = json['namePlural'];
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'name': name,
      'symbolNative': symbolNative,
      'decimalDigits': decimalDigits,
      'rounding': rounding,
      'code': code,
      'namePlural': namePlural,
    };
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
