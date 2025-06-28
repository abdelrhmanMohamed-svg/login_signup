import 'package:flutter/material.dart';

class Customtextbig extends StatelessWidget {
  const Customtextbig({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold));
  }
}