import 'package:flutter/material.dart';
import 'package:live_currency_rate/live_currency_rate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    LiveCurrencyRate.convertCurrency("USD", "VND", 1).then((res) {
      print(res.result);
      print(res.message);
    });
    return Scaffold();
  }
}
