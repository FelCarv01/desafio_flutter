import 'package:desafio_flutter/src/utils/consts.dart';
import 'package:desafio_flutter/theme/pet_colors.dart';
import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String petDescriber;
  final String petDistance;
  final String? petMainImage;
  final String petBreed;
  final String petName;
  final String routeToInfo;
  final Size size;

  const PetCard({
    super.key,
    this.petMainImage,
    required this.petDescriber,
    required this.petDistance,
    required this.petBreed,
    required this.petName,
    required this.routeToInfo,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => Navigator.pushNamed(context, routeToInfo),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      petMainImage ?? PetImages.petPlaceHolder,
                      width: size.width * .3,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      petName,
                      style: theme.textTheme.headline6,
                      softWrap: true,
                    ),
                    SizedBox(
                      height: size.width * .02,
                    ),
                    Text(
                      petBreed,
                      style: theme.textTheme.subtitle1,
                    ),
                    SizedBox(
                      height: size.width * .02,
                    ),
                    Text(
                      petDescriber,
                      style: theme.textTheme.subtitle2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Icon(
                            Icons.location_on,
                            size: 20,
                            color: PetColors.petSymbols,
                          ),
                        ),
                        Text(
                          petDistance,
                          style: theme.textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            right: 16,
            top: 16,
            child: Icon(
              Icons.favorite_outline,
              color: PetColors.petTextGray,
            ),
          ),
        ],
      ),
    );
  }
}
