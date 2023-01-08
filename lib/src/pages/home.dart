import 'package:desafio_flutter/src/pages/components/home/pet_card_list.dart';
import 'package:desafio_flutter/src/pages/components/home/pet_category_list.dart';
import 'package:desafio_flutter/src/widgets/pet_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        title: Column(
          children: [
            Text(
              'Localização',
              style: theme.textTheme.subtitle2,
            ),
            const SizedBox(height: 6),
            Text(
              'Av. Presidente, Rio Verde',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/62801306.jpeg'),
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const PetButton(iconData: Icons.tune),
                Expanded(child: PetCategoryList())
              ],
            ),
            const Expanded(child: PetCardList())
          ],
        ),
      ),
    );
  }
}
