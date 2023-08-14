import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_liverpool/common/icon/custom_icon.dart';

import '../../controller/product_controller.dart';

class CustomSortOption extends StatelessWidget {
  const CustomSortOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final productController = Provider.of<ProductController>(context);
        if (productController.isLoading == true) {
          return const SizedBox(
            width: 48,
          );
        }
        return PopupMenuButton(
          icon: const CustomIcon(
            iconData: Icons.sort,
          ),
          itemBuilder: (ctx) => List.generate(
            productController.sortOption.length,
            (index) {
              return PopupMenuItem(
                child: Text(
                  productController.sortOption[index].label.toString(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
