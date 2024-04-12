import 'dart:developer';

import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget{
  const OnboardingPage({super.key});

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Align(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/main.png'),
            ),
            Text('Spend Smarter', 
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.purple,
              ),
            ),
            Text('Save More',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                top: 0,
                bottom: 16.0
              ),
              child: 
                CustomTextButton(),
            ),          
          ],
        ),
      ),  
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(//Dequitar o toque
      onTap: () => log('message')
      ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have account? ',
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.grey,
            )
          ),
          Text('Log In',
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.purple,
            ),
          ),
        ],
      ),
    );
  }
}

