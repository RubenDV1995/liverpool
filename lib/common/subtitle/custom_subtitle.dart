import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class CustomSubtitle extends StatelessWidget {
  final String subtitle;
  final double? fontSize;

  const CustomSubtitle({
    required this.subtitle,
    Key? key,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      overflow: TextOverflow.clip,
      style: TextStyle(
        fontSize: fontSize ?? spacingM_16,
        color: Colors.black.withOpacity(0.6),
      ),
    );
  }
}
