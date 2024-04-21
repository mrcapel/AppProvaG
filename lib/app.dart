import 'package:app_financy/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'features/home/home.dart';

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage(),
      routes: {
        '/home': (context) => HomePage(),
        
      },
    );
  }
}
