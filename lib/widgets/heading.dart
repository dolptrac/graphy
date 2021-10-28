import 'package:flutter/material.dart';
import '../utils/constant.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title!,
            style: kHeadingTextStyle,
          ),
        ),
      ],
    );
  }
}
