import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgImage extends StatelessWidget {
  final String assetName;
  final double? width;

  const CustomSvgImage({
    required this.assetName,
    Key? key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      semanticsLabel: 'Acme Logo',
      width: width ?? 250,
    );
  }
}
