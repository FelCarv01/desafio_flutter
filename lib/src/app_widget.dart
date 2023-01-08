import 'package:flutter/material.dart';

import '../theme/pet_theme.dart';
import 'pages/home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: petTheme(),
      home: const Home(),
    );
  }
}
