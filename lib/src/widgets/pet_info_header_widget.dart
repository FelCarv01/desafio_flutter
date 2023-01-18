import 'package:flutter/material.dart';

import '../../theme/pet_colors.dart';

class PetInfoHeader extends StatelessWidget {
  const PetInfoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6, left: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'PetName',
                  style: theme.textTheme.headline6,
                ),
                const Icon(
                  Icons.male,
                  size: 28,
                  color: PetColors.petTextGray,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6, left: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'petBreed',
                  style: theme.textTheme.subtitle1,
                ),
                Text(
                  'petDescriber',
                  style: theme.textTheme.subtitle2,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 20,
                color: PetColors.petSymbols,
              ),
              Text(
                'petDistance',
                style: theme.textTheme.subtitle2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
