import 'package:flutter/material.dart';

class PetAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String location;
  final String assetAvatarName;
  final Size size;

  const PetAppBarWidget({
    super.key,
    required this.title,
    required this.location,
    required this.assetAvatarName,
    required this.size,
  });

  @override
  Size get preferredSize => Size.fromHeight(size.width * .23);

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
            onPressed: () {}, // Go to profile
            icon: CircleAvatar(
              backgroundImage: AssetImage(assetAvatarName),
            ),
          ),
        )
      ],
    );
  }
}
