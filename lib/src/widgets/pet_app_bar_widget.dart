import 'package:desafio_flutter/src/utils/consts.dart';
import 'package:flutter/material.dart';

class PetAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const PetAppBarWidget({
    super.key,
    required this.title,
    required this.location,
  });
  final String title;
  final String location;

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      toolbarHeight: preferredSize.height,
      elevation: 0,
      title: Column(
        children: [
          Text(
            title,
            style: theme.textTheme.subtitle2,
          ),
          const SizedBox(height: 6),
          Text(
            location,
            style: theme.textTheme.headline6,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundImage: AssetImage(PetImages.userAvatar),
            ),
          ),
        )
      ],
    );
  }
}
