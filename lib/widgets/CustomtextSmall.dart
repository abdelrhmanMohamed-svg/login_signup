import 'package:flutter/material.dart';

class CustomtextSmall extends StatelessWidget {
  const CustomtextSmall({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ));
  }
}
