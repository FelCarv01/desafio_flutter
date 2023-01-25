import 'package:flutter/material.dart';

class PetCustomButtom extends StatelessWidget {
  final Size size;

  const PetCustomButtom({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.width * .17,
        width: size.width * .5,
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size.width * .12),
          ),
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
