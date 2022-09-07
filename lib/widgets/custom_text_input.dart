import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  //final IconData icon;
  final bool obscureText;
  const CustomTextInput({Key? key,
    required this.hintText,
    //required this.icon,
    required this.obscureText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        //border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(9.0),
        /*
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(1, 3),),
        ],
        */
      ),
      child: TextField(
        //keyboardType: keyboardType,
        //textAlignVertical: TextAlignVertical(y: 1.0),
        obscureText: obscureText,
        style: const TextStyle(
            color: Colors.brown,
            //fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 16,),
          //prefixIcon: Icon(icon, size: 22, color: Colors.brown[400],),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
