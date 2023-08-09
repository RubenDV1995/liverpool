import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppbar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
