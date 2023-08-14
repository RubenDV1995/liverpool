import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class CustomPrice extends StatelessWidget {
  final double price;
  final double? fontSize;

  const CustomPrice({
    required this.price,
    Key? key,
    this.fontSize,
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
      style: TextStyle(
        fontSize: fontSize ?? spacingM_16,
        color: MainColor.stateRed,
      ),
    );
  }
}
