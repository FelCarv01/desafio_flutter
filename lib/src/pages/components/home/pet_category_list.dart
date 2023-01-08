import 'package:desafio_flutter/src/widgets/pet_button_widget.dart';
import 'package:flutter/material.dart';

class PetCategoryList extends StatelessWidget {
  PetCategoryList({super.key});
  final categories = <String>[
    'settings', //to build a buttom tune
    'Cachorros',
    'gatos',
    'passaros',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 1, (context, index) {
        return SizedBox(
          height: size.height * .1,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const Padding(
                  padding: EdgeInsets.all(12),
                  child: PetButton(
                    iconData: Icons.tune,
                  ),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(12),
                child: PetButton(
                  iconData: Icons.pets,
                  animal: categories[index],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
