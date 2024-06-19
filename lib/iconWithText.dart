import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {

  IconWithText({required this.name, required this.yicon});
  final IconData yicon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          yicon,
          size: 90,
        ),
        Text(name,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),
        )
      ],
    );
  }
}