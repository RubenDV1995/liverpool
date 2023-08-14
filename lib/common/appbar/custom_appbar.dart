import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_liverpool/constants/colors.dart';

import '../../features/products/controller/product_controller.dart';
import '../skeleton/skeleton_custom_text_field.dart';
import '../text_field/custom_text_field.dart';

class CustomAppbar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _CustomAppbarState extends State<CustomAppbar> {
  late ProductController _productController;

  @override
  void initState() {
    super.initState();
    _setRepositoryAndController();
  }

  void _setRepositoryAndController() {
    _productController = Provider.of<ProductController>(
      context,
      listen: false,
    );
  }

  void filterSearchResults(String query) {
    _productController.onSortOption(
      query: query,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: MainColor.primaryColor,
      title: Builder(builder: (context) {
        final productController = Provider.of<ProductController>(context);
        if (productController.isLoading == true) {
          return const SkeletonCustomTextField();
        }
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: Center(
            child: CustomTextField(
              onChanged: filterSearchResults,
            ),
          ),
        );
      }),
    );
  }
}
