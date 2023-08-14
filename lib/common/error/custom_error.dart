import 'package:flutter/material.dart';
import 'package:prueba_liverpool/constants/sizes.dart';

import '../image/svg/custom_svg_image.dart';
import '../padding/custom_padding.dart';
import '../title/custom_title.dart';

class CustomError extends StatelessWidget {
  const CustomError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      typePadding: TypePadding.all,
      child: Column(
        children: const [
          SizedBox(
            height: spacingM_20,
          ),
          CustomSvgImage(
            assetName: 'assets/svg/system/undraw_server_down_s-4-lk.svg',
          ),
          SizedBox(
            height: spacingM_20,
          ),
          CustomTitle(
            title: 'Lo sentimos',
            fontSize: spacingL_24,
          ),
          SizedBox(
            height: spacingXXS_4,
          ),
          CustomTitle(
            title: 'Ha ocurrido un error',
          )
        ],
      ),
    );
  }
}
