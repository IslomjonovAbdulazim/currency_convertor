import 'package:flutter/material.dart';
import 'package:live_currency_rate/live_currency_rate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    LiveCurrencyRate.convertCurrency("USD", "UZS", 100).then((res) {
      print(res);
    });
    return Scaffold();
  }
}
