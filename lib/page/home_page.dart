import 'dart:convert';

import 'package:currency_convertor/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_currency_rate/live_currency_rate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> currencies = [];
  List<CurrencyModel> currencyDetails = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    String data = await rootBundle.loadString("assets/currencies.json");
    Map json = Map.from(jsonDecode(data));
    currencies = List.from(json.keys);
    List jsonDetails = List.from(json.values);
    currencyDetails = List.from(
      jsonDetails.map((json) => CurrencyModel.fromJson(json)),
    );
    print(currencyDetails.length);
  }

  @override
  Widget build(BuildContext context) {
    LiveCurrencyRate.convertCurrency("USD", "VND", 1).then((res) {
      print(res.result);
      print(res.message);
    });
    return Scaffold();
  }
}
