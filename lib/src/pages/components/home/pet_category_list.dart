import 'package:desafio_flutter/src/widgets/pet_button.dart';
import 'package:flutter/material.dart';

class PetCategoryList extends StatelessWidget {
  PetCategoryList({super.key});
  final categories = <String>[
    'Cachorros',
    'gatos',
    'passaros',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: ListView.builder(
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(12),
          child: PetButton(
            iconData: Icons.pets,
            animal: categories[index],
          ),
        ),
      ),
    );
  }
}
