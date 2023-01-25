import 'package:desafio_flutter/src/widgets/pet_app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../theme/pet_colors.dart';
import '../utils/consts.dart';
import '../widgets/pet_button_widget.dart';
import '../widgets/pet_card_widget.dart';

class PetHomePage extends StatelessWidget {
  PetHomePage({super.key});
  final categories = <Map<String, dynamic>>[
    {'name': null, 'icon': Icons.tune},
    {'name': 'Dogs', 'icon': Icons.pets},
    {'name': 'Cats', 'icon': Icons.pets},
    {'name': 'Birds', 'icon': Icons.pets},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(),
      appBar: PetAppBarWidget(
        location: 'AV. U2, 6634, centro',
        title: 'Location',
        assetAvatarName: PetImages.userAvatar,
        size: size,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: PetColors.petBacgroundHome,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, bottom: 12),
                  child: SizedBox(
                    height: size.width * .2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final category = categories[index];
                        final name = category['name'];
                        final icon = category['icon'];
                        return Padding(
                          padding: const EdgeInsets.all(
                            12,
                          ),
                          child: PetButton(
                            iconData: icon,
                            animal: name,
                          ),
                        );
                      },
                    ),
                  ),
                );
              }),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding:
                      const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                  child: PetCard(
                    petMainImage: PetImages.userAvatar,
                    petBreed: 'Pé duro',
                    petDescriber: 'Macho, 2 anos de idade',
                    petDistance: '2km de distancia',
                    petName: 'De Cria',
                    routeToInfo: '/info',
                    size: size,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
