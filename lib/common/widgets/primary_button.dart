import 'package:flutter/material.dart';
import 'package:app_financy/common/constants/app_colors.dart';
import 'package:app_financy/common/constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? backgroundColor; // Adicionando a propriedade backgroundColor

  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.backgroundColor, // Adicionando a propriedade backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(38.0),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: onPressed != null
              ? [AppColors.purpleOne[0], AppColors.purpleOne[1]] // Utilizando cores do gradiente definidas em AppColors
              : [AppColors.greyPurple[0], AppColors.greyPurple[1]],
          ),
          color: backgroundColor, // Definindo a cor de fundo do botão
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(38.0),
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38.0),
            ),
            alignment: Alignment.center,
            height: 64.0,
            width: 358.0,
            child: Text(
              text,
              style: AppTextStyles.mediumText18.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
