import 'package:desafio_flutter/src/pages/components/home/pet_card_list.dart';
import 'package:desafio_flutter/src/pages/components/home/pet_category_list.dart';
import 'package:desafio_flutter/src/widgets/pet_app_bar_widget.dart';
import 'package:desafio_flutter/theme/pet_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const PetAppBarWidget(
        location: 'AV. U2, 6634, centro',
        title: 'Location',
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: PetColors.petBacgroundHome,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: PetColors.petBacgroundHome,
          ),
          child: Column(
            children: [
              PetCategoryList(),
              const Expanded(child: PetCardList()),
            ],
          ),
        ),
      ),
    );
  }
}
