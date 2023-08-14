import 'package:flutter/material.dart';

class CustomImageNetwork extends StatelessWidget {
  final String? src;

  const CustomImageNetwork({
    Key? key,
    this.src,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(src == null){
      return const SizedBox.shrink();
    }
    return Image.network(
      src!,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Text('ð¢');
      },
      loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) =>
          const CircularProgressIndicator(),
    );
  }
}
