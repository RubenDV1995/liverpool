import 'package:flutter/material.dart';
import 'package:prueba_liverpool/common/padding/custom_padding.dart';
import 'package:prueba_liverpool/common/title/custom_title.dart';

import '../../../common/image/svg/custom_svg_image.dart';
import '../../../constants/sizes.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({Key? key}) : super(key: key);

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
            assetName: 'assets/svg/system/undraw_taken_re_yn20.svg',
          ),
          SizedBox(
            height: spacingM_20,
          ),
          CustomTitle(
            title: 'Ups!',
            fontSize: spacingL_24,
          ),
          SizedBox(
            height: spacingXXS_4,
          ),
          CustomTitle(
            title: 'Lo sentimos no hay productos',
          )
        ],
      ),
    );
  }
}
