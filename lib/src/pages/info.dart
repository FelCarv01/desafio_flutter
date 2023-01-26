import 'package:flutter/material.dart';

import '../widgets/pet_Info_list_image_widget.dart';
import '../widgets/pet_custom_buttom_widget.dart';
import '../widgets/pet_info_about_text_widget.dart';
import '../widgets/pet_info_header_widget.dart';
import '../widgets/pet_info_nav_bar_widget.dart';

class PetInfoPage extends StatelessWidget {
  const PetInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const about =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
    return Scaffold(
      appBar: PetInfoNavBar(
        size: size,
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const PetInfoHeader(),
                    PetInfoListImage(size: size),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.width / 5),
                      child: const PetInfoAboutText(about: about),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: PetCustomButtom(
              size: size,
            ),
          ),
        ],
      ),
    );
  }
}
