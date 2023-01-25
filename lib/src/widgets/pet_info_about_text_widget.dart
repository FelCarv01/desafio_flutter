import 'package:flutter/material.dart';

class PetInfoAboutText extends StatelessWidget {
  final String about;

  const PetInfoAboutText({
    Key? key,
    required this.about,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        left: 12,
        right: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              'About',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            about,
            style: const TextStyle(
              height: 1.7,
              fontSize: 16,
              color: Color(0xFFBEBEBE),
            ),
          )
        ],
      ),
    );
  }
}
