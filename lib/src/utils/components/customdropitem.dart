import 'package:flutter/material.dart';

class CustomDropItem extends StatelessWidget {
  final String? image;
  final String? text;
  const CustomDropItem({this.image, this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 25,
          width: 25,
          child: Image.asset(image!),
        ),
        const Spacer(),
        Text(text!),
        const Spacer()
      ],
    );
  }
}
