import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

import '../../constants/sizes.dart';

class CustomPriceLineThrough extends StatelessWidget {
  final double price;

  const CustomPriceLineThrough({
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      MoneyFormatter(
        amount: price,
        settings: MoneyFormatterSettings(
          symbol: '\$',
          thousandSeparator: ',',
          decimalSeparator: '.',
        ),
      ).output.symbolOnLeft,
      style: const TextStyle(
        fontSize: spacingM_16,
        color: Colors.grey,
        decoration: TextDecoration.lineThrough,
      ),
    );
  }
}
