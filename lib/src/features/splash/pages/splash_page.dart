import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void init() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.of(context).pushReplacementNamed('/onboarding');
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedCard(
        curve: Curves.bounceInOut,
        direction: AnimatedCardDirection.top,
        duration: const Duration(seconds: 2),
        child: Image.asset(
          'assets/images/nubank-logo.png',
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
