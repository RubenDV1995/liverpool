import 'package:flutter/material.dart';
import 'package:prueba_liverpool/common/padding/custom_padding.dart';
import 'package:skeletons/skeletons.dart';

import '../../constants/sizes.dart';

class SkeletonCustomTextField extends StatelessWidget {
  const SkeletonCustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,),
      child: CustomPadding(
        typePadding: TypePadding.horizontal,
        padding: spacingXXS_4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SkeletonLine(
              style: SkeletonLineStyle(
                height: 20,
                width: 60,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SkeletonLine(
              style: SkeletonLineStyle(
                height: 20,
                width: 30,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
