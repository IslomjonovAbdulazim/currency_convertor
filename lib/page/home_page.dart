import 'dart:convert';

import 'package:currency_convertor/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      backgroundColor: Color(0xffecf2f8),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "Currency Converter",
                  style: GoogleFonts.roboto(
                    color: Color(0xff1F2261),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Check live rates, set rate alerts, receive notifications and more.",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff808080),
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Amount",
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Color(0xff989898),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
