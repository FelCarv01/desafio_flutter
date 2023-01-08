import 'package:desafio_flutter/src/utils/consts.dart';
import 'package:desafio_flutter/src/widgets/pet_card_widget.dart';
import 'package:flutter/material.dart';

class PetCardList extends StatelessWidget {
  const PetCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .8,
      child: ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
          child: PetCard(
            petMainImage: PetImages.petMainImage,
            petBreed: 'Pé duro',
            petDescriber: 'Macho, 2 anos de idade',
            petDistance: '2km de distancia',
            petName: 'De Cria',
          ),
        ),
      ),
    );
  }
}
