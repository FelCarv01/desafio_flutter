import 'package:desafio_flutter/theme/pet_colors.dart';
import 'package:flutter/material.dart';

class PetButton extends StatelessWidget {
  final String? animal;
  final IconData iconData;
  const PetButton({
    super.key,
    this.animal,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context); Usar quando incluir o selected no ontap.
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: PetColors.petPrimary,
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Icon(
                iconData,
                size: 26,
              ),
            ),
            Text(
              animal ?? '',
            ),
          ],
        ),
      ),
    );
  }
}
