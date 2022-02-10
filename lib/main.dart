import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_app/pages/splash_screen.dart';

void main() {
  // transparent the notification bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Morshed Raian Portfolio",
      home: Splash(),
    );
  }
}
