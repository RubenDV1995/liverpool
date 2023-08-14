import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';
import '../../../domain/models/product_model.dart';
import '../../../utils/color/hex_color.dart';

class ColorListView extends StatelessWidget {
  final Record record;
  final double? size;

  const ColorListView({
    required this.record,
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (record.variantsColor[0].colorHex == ''){
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: size ?? spacingM_20,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: record.variantsColor.length,
        padding: const EdgeInsets.all(0.0),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              print('Color');
            },
            child: Container(
              height: size ?? spacingM_20,
              width: size ?? spacingM_20,
              decoration: BoxDecoration(
                color: HexColor(
                  record.variantsColor[index].colorHex,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    spacingM_20,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: spacingXXS_4,
        ),
      ),
    );
  }
}
