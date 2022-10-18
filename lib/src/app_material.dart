import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/features/home/pages/dashboard_page.dart';
import 'package:nubank_melhor/src/features/login/pages/onboarding_page.dart';
import 'package:nubank_melhor/src/features/splash/pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/home': (context) => const DashBoardPage(),
      },
    );
  }
}
