import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final onPressed;
  final String text;
  final color;
  final double fontSize;
  const CustomTextButton({Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.fontSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          //fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
