import 'package:flutter/material.dart';
import 'package:prueba_liverpool/constants/colors.dart';

class CustomOutlineButton extends StatelessWidget {
  final String titleButton;
  final void Function()? onPressed;

  const CustomOutlineButton({
    required this.titleButton,
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1.0,
            color: MainColor.primaryColor,
          ),
        ),
        child: Text(
          titleButton,
          style: const TextStyle(
            color: MainColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
