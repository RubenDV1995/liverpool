import 'package:flutter/material.dart';
import 'package:prueba_liverpool/common/padding/custom_padding.dart';

import '../../../common/html/custom_html.dart';
import '../../../common/page/custom_profile_back_page.dart';
import '../../../common/price/custom_price.dart';
import '../../../common/price/custom_price_line_through.dart';
import '../../../common/subtitle/custom_subtitle.dart';
import '../../../common/title/custom_title.dart';
import '../../../constants/sizes.dart';
import '../../../domain/models/product_model.dart';
import '../../products/widgets/color_list_view.dart';

class DetailProduct extends StatelessWidget {
  final String? urlImageBackground;
  final String heroTag;
  final String brand;
  final String productDisplayName;
  final double listPrice;
  final double? promoPrice;
  final Record record;

  const DetailProduct({
    required this.urlImageBackground,
    required this.heroTag,
    required this.brand,
    required this.productDisplayName,
    required this.listPrice,
    required this.promoPrice,
    required this.record,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomProfileBackPage(
      urlImageBackground: urlImageBackground,
      heroTag: heroTag,
      category: record.category,
      body: CustomPadding(
        typePadding: TypePadding.all,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTitle(
              title: productDisplayName,
              fontSize: spacingL_28,
            ),
            const SizedBox(
              height: spacingM_16,
            ),
            CustomSubtitle(
              subtitle: brand,
            ),
            const SizedBox(
              height: spacingXS_8,
            ),
            Row(
              children: [
                if(promoPrice != null)
                CustomPrice(
                  price: promoPrice!,
                  fontSize: spacingL_24,
                ),
                const SizedBox(
                  width: spacingXS_8,
                ),
                if (promoPrice != null && listPrice != promoPrice)
                  Column(
                    children: [
                      CustomPriceLineThrough(
                        price: listPrice,
                      ),
                      const SizedBox(
                        height: spacingXXS_4,
                      ),
                    ],
                  ),
              ],
            ),
            const SizedBox(
              height: spacingXS_8,
            ),
            ColorListView(
              record: record,
              size: spacingXL_32,
            ),
            const SizedBox(
              height: spacingXS_8,
            ),
            CustomHtml(
              dwPromotionInfo: record.dwPromotionInfo,
            ),
          ],
        ),
      ),
    );
  }
}
