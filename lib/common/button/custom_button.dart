import 'package:flutter/material.dart';
import 'package:prueba_liverpool/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String titleButton;
  final void Function()? onPressed;

  const CustomButton({
    required this.titleButton,
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            MainColor.primaryColor,
          ),
        ),
        child: Text(
          titleButton,
          style: const TextStyle(
            color: MainColor.primaryWhite,
          ),
        ),
      ),
    );
  }
}
