import 'package:flutter/material.dart';

// import '../Component/Screens/Random_Quotes.dart';
import '../Component/Screens/RandomQuote/random_quotes.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => QuotesScreen()
  };
}
