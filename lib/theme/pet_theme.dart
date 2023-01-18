import 'package:flutter/material.dart';

import 'pet_colors.dart';

ThemeData petTheme() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      headline4: base.headline4!.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      headline5: base.headline5!.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline6: base.headline6!.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: base.bodyText2!.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: base.subtitle1!.copyWith(
        color: PetColors.petTextBlack,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: base.subtitle2!.copyWith(
        color: PetColors.petTextGray,
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      caption: base.caption!.copyWith(
        color: PetColors.petTextGray,
        fontFamily: 'Roboto',
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  final base = ThemeData.light();

  return base.copyWith(
    primaryColor: PetColors.petPrimary,
    scaffoldBackgroundColor: PetColors.petPrimary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: PetColors.petPrimary,
      foregroundColor: PetColors.petTextBlack,
    ),
    textTheme: _textTheme(base.textTheme),
  );
}
