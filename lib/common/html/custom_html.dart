import 'package:flutter/material.dart';

import '../../domain/models/product_model.dart';
import '../subtitle/custom_subtitle.dart';

class CustomHtml extends StatefulWidget {
  final DwPromotionInfo dwPromotionInfo;

  const CustomHtml({
    required this.dwPromotionInfo,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomHtml> createState() => _CustomHtmlState();
}

class _CustomHtmlState extends State<CustomHtml> {
  late String textFormatted;
  late String tempTextFormatted;
  late List<String> listString = [];
  late List<String> tempListString;
  late DwPromotionInfo dwPromotionInfo = widget.dwPromotionInfo;

  @override
  void initState() {
    super.initState();
    textFormat();
  }

  void textFormat() {
    Map<String, dynamic> json = dwPromotionInfo.toJson();
    json.forEach((key, value) {
      tempListString = value.toString().split(
            RegExp(
              r"<[^>]*>",
              multiLine: true,
              caseSensitive: true,
            ),
          );
      tempTextFormatted = '${tempListString.join("")} &';
      listString.add(tempTextFormatted);
    });
    textFormatted = listString.join("").replaceAll('&', ' ');
  }

  @override
  Widget build(BuildContext context) {
    return CustomSubtitle(
      subtitle: textFormatted,
    );
  }
}
