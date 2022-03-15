import 'package:flutter/material.dart';

class Topside extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final void Function()? onPressed;
  const Topside(
      {this.onPressed,
      this.image = '',
      this.text1 = '',
      this.text2 = '',
      this.text3 = '',
      this.text4 = '',
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_back),
        ),
        Row(
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  image,
                )),
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )
          ],
        ),
        Text(
          text2,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        Row(
          children: [
            Text(
              text3,
              style: const TextStyle(color: Colors.black45),
            ),
            Text(
              text4,
              style: const TextStyle(
                  color: Colors.black45, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
