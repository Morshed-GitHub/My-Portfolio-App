import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // navigate splash screen to home page
    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => const HomePage()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff23535A),
          Color(0xff42A5D3),
        ], begin: Alignment.bottomRight, end: Alignment.topLeft),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              _appLogo(),
              const Divider(
                height: 30,
              ),
              _portfolioAppText(),
            ],
          ),
          _circleLoading()
        ],
      ),
    ));
  }
}

Widget _appLogo() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Image.asset(
      "assets/images/App Logo.jpg",
      height: 180,
      width: 180,
    ),
  );
}

Widget _portfolioAppText() {
  return const Text(
    'Portfolio App',
    style: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontStyle: FontStyle.italic),
  );
}

Widget _circleLoading() {
  return const CircularProgressIndicator(
    color: Colors.white,
  );
}
