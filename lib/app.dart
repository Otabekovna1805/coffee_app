import 'package:coffee_app/pages/page_two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageTwo(),
      themeMode: ThemeMode.light,
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
