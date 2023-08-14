import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_liverpool/common/appbar/custom_appbar.dart';
import 'package:prueba_liverpool/common/padding/custom_padding.dart';

import '../../../common/error/custom_error.dart';
import '../../../common/page/custom_page.dart';
import '../../../constants/sizes.dart';
import '../controller/product_controller.dart';
import '../widgets/empty_list_view.dart';
import '../widgets/product_item.dart';
import '../widgets/skeletons/skeleton_product_list.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ///Controller
  late ProductController _productController;

  @override
  void initState() {
    super.initState();
    _setRepositoryAndController();
    _getListProduct();
  }

  void _setRepositoryAndController() {
    _productController = Provider.of<ProductController>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _productController.onLoading(true);
      },
    );
  }

  Future<void> _getListProduct() async {
    await _productController.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      appBar: const CustomAppbar(),
      body: CustomPadding(
        typePadding: TypePadding.horizontal,
        child: Builder(
          builder: (context) {
            final productController = Provider.of<ProductController>(context);
            if (productController.isLoading == true) {
              return const SkeletonProductList();
            }
            if (productController.onErrorGetProducts == true) {
              return const CustomError();
            }
            if (productController.currentProducts.isEmpty) {
              return const EmptyListView();
            }
            return SingleChildScrollView(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productController.currentProducts.length,
                padding: const EdgeInsets.only(
                  top: spacingXS_8,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(
                    record: productController.currentProducts[index],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: spacingXXS_4,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
