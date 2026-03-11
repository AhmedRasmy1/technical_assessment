import 'package:flutter/material.dart';
import 'package:technical_assessment/home_page.dart';

void main() {
  runApp(const Restaurant());
}

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
