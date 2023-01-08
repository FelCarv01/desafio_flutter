import 'package:desafio_flutter/src/widgets/pet_card.dart';
import 'package:flutter/material.dart';

class PetCardList extends StatelessWidget {
  const PetCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: ListView.builder(
        itemBuilder: (context, index) => const PetCard(
          petMainImage: 'assets/images/62801306.jpeg',
          petBreed: 'Pé duro',
          petDescriber: 'Macho, 2 anos de idade',
          petDistance: '2km de distancia',
          petName: 'De Cria',
        ),
      ),
    );
  }
}
