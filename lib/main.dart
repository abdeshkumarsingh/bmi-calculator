import 'package:flutter/material.dart';
import 'package:bmi_calculator/homePage.dart';

void main() {
runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF1D2136),
          appBarTheme: AppBarTheme(
            color: Color(0xFF1D2136),
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          )
      ),
      home: homePage(),
    );
  }
}


