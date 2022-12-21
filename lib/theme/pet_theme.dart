import 'package:desafio_flutter/theme/pet_colors.dart';
import 'package:flutter/material.dart';

ThemeData petTheme() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      headline5: base.headline5?.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      ),
      bodyText2: base.bodyText2?.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
      ),
      subtitle2: base.subtitle2?.copyWith(
        color: PetColors.petTextGray,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
      caption: base.caption?.copyWith(
        color: PetColors.petTextGray,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  final base = ThemeData.light();

  return base.copyWith(
    primaryColor: PetColors.petPrimary,
    scaffoldBackgroundColor: PetColors.petBacgroundHome,
    backgroundColor: PetColors.petPrimary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: PetColors.petPrimary,
    ),
    textTheme: _textTheme(base.textTheme),
  );
}
