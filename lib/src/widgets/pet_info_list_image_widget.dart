import 'package:flutter/material.dart';

import '../../theme/pet_colors.dart';
import '../utils/consts.dart';

class PetInfoListImage extends StatelessWidget {
  const PetInfoListImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.width * .89,
      child: Stack(
        children: [
          Positioned(
            left: 12,
            top: 22,
            child: SizedBox(
              height: size.width * .88,
              width: size.width * .2,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: PetColors.petTextGray,
                      ),
                    ),
                    child: Image.asset(
                      PetImages.petMainImage,
                      width: size.width * .1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: size.width * -.18,
            child: Container(
              height: size.width * .88,
              width: size.width * .88,
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(
                  size.width * .44,
                ),
              ),
              child: Center(
                child: Image.asset(
                  PetImages.petMainImage,
                  width: size.width / 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
