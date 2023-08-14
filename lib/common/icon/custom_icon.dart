import 'package:flutter/material.dart';
import 'package:prueba_liverpool/constants/colors.dart';

import '../../constants/sizes.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final Color? color;

  const CustomIcon({
    required this.iconData,
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: spacingM_20,
      color: color ?? MainColor.primaryWhite,
    );
  }
}
