import 'package:app_financy/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFC617F1), 
              Color(0xFF5915C8)
            ]
          ),
        ),
        child: Text(
          'finacy',
          style: AppTextStyles.bigText.copyWith(
            color: Color(0xFFFFFFFF)
          ),
        ),
      ),
    );
  }
}