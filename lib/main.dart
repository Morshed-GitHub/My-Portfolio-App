import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() => runApp(const PortfolioApp());

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Morshed Raian Portfolio",
      home: HomePage(),
    );
  }
}
