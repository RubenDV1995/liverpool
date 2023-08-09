import 'package:flutter/material.dart';

import '../../../domain/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      height: 120,
      child: Row(
        children: [
          const FlutterLogo(
            size: 80.0,
          ),
          Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Status Code',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    product.status!.status.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Text(
                product.status!.statusCode.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
