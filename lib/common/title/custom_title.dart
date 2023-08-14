import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double? fontSize;

  const CustomTitle({
    required this.title,
    Key? key,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.clip,
      style: TextStyle(
        fontSize: fontSize ?? spacingM_20,
      ),
    );
  }
}
