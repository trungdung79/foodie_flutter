import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final onPressed;
  final String buttonText;
  final buttonColor;
  final textColor;
  final borderColor;
  const CustomButton({Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        //color: Colors.red,
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: Colors.red, width: 1.2),
          borderRadius: BorderRadius.circular(9.0),
          /*
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(1, 3),),
          ],
          */
        ),
        child: Text(buttonText,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            //fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
