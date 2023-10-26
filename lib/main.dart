import 'package:flutter/material.dart';

import 'package:flutter_uts/pages/home_page.dart';
import 'package:flutter_uts/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          "Flutter navigation: Kynantio Candra Abrari | 2141720206",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => ItemPage(),
      },
    );
  }
}
