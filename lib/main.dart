import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/Utils/routes.dart';

import 'Component/Screens/RandomQuote/random_quotes.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        routes: AppRoutes.routes,
    );
  }
}
