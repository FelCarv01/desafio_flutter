import 'package:desafio_flutter/src/pages/info.dart';
import 'package:flutter/material.dart';

import '../theme/pet_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: petTheme(),
      home: const PetInfoPage(),
      //home: PetHomePage(),
    );
  }
}
