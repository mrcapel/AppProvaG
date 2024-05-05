import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:app_financy/common/constants/app_colors.dart';
import 'package:app_financy/common/constants/app_text_styles.dart';
import 'package:app_financy/common/widgets/primary_button.dart';
import 'package:app_financy/features/usuario/usuario.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/Agenda-PNG.png'),
            ),
            Text(
              'O Melhor Bloco De Notas!',
              style: AppTextStyles.mediumText.copyWith(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Anotações de Qualidade',
              style: AppTextStyles.mediumText.copyWith(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Começar',
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                backgroundColor: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                top: 0,
                bottom: 16.0,
              ),
              child: CustomTextButton(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Text('Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log('message'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
