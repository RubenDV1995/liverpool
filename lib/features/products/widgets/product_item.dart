import 'package:flutter/material.dart';
import 'package:prueba_liverpool/common/price/custom_price.dart';
import 'package:prueba_liverpool/constants/colors.dart';

import '../../../common/price/custom_price_line_through.dart';
import '../../../common/title/custom_title.dart';
import '../../../constants/sizes.dart';
import '../../../domain/models/product_model.dart';
import '../../../utils/navigator/navigator.dart';
import '../../detail_product/page/detail_product.dart';
import 'color_list_view.dart';

class ProductItem extends StatelessWidget {
  final Record record;

  const ProductItem({
    required this.record,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goToPush(
          context: context,
          page: DetailProduct(
            urlImageBackground: record.xlImage,
            heroTag: 'heroProduct${record.productId.toString()}',
            brand: record.brand,
            productDisplayName: record.productDisplayName,
            listPrice: record.listPrice,
            promoPrice: record.promoPrice,
            record: record,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: MainColor.primaryWhite,
        ),
        child: ContentProductItem(
          productDisplayName: record.productDisplayName,
          listPrice: record.listPrice,
          promoPrice: record.promoPrice,
          record: record,
          smImage: record.smImage,
        ),
      ),
    );
  }
}

class ContentProductItem extends StatelessWidget {
  final String productDisplayName;
  final double listPrice;
  final double promoPrice;
  final Record record;
  final String? smImage;

  const ContentProductItem({
    required this.productDisplayName,
    required this.listPrice,
    required this.promoPrice,
    required this.record,
    Key? key,
    this.smImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: smImage != null
              ? Image.network(
                  smImage!,
                )
              : const FlutterLogo(),
        ),
        const SizedBox(
          width: spacingS_12,
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitle(
                title: productDisplayName.toString(),
              ),
              if (listPrice != promoPrice)
                CustomPriceLineThrough(
                  price: listPrice,
                ),
              CustomPrice(
                price: promoPrice,
              ),
              ColorListView(
                record: record,
              ),
            ],
          ),
        )
      ],
    );
  }
}
