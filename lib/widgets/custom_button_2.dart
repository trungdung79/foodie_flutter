import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final onPressed;
  final String buttonText;
  final buttonColor;
  final textColor;
  final borderColor;
  final IconData icon;
  final iconColor;
  const CustomButton2({Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor,
    required this.icon,
    required this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 160,
        height: 36,
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
        child: Row(
          children: [
            const Expanded(child: SizedBox(),),
            Icon(icon, size: 24, color: iconColor,),
            const SizedBox(width: 5,),
            Text(buttonText,
              style: TextStyle(
                fontSize: 14,
                color: textColor,
                //fontWeight: FontWeight.bold
              ),
            ),
            const Expanded(child: SizedBox(),),
          ],
        ),
      ),
    );
  }
}
