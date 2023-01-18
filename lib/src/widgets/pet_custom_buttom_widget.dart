import 'package:flutter/material.dart';

class PetCustomButtom extends StatelessWidget {
  const PetCustomButtom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.width / 6,
        width: size.width / 2.4,
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(24)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 6),
              child: Icon(
                Icons.pets,
                color: Colors.white,
                size: 26,
              ),
            ),
            Text(
              'ADOPT'.toUpperCase(),
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
