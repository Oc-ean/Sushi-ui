import 'package:flutter/material.dart';
import 'package:food_ui/item_screen.dart';
import 'package:food_ui/package/sashimi_screen.dart';
import 'package:food_ui/package/sushi_screen.dart';
import 'package:food_ui/price_screen.dart';
import 'package:food_ui/dsn_page.dart';

void main() {
  runApp(FoodUi());
}

class FoodUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFB1464A),
          accentColor: Color(0xFFB1464A),
          scaffoldBackgroundColor: Color(0xFFB1464A),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFFB1464A),
          )),
      initialRoute: DsnPage.id,
      routes: {
        DsnPage.id: (context) => DsnPage(),
        PriceScreen.id: (context) => PriceScreen(),
        ItemsScreen.id: (context) => ItemsScreen(),
        // SushiScreen.id: (context) => SushiScreen(),
        SashimiScreen.id: (context) => SashimiScreen(),
      },
    );
  }
}
