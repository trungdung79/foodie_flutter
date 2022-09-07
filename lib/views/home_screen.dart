import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Image.asset('assets/images/Background_1.png', fit: BoxFit.fill,),
          ),
          Center(
            child: SizedBox(
              height: size.height / 9,
              child: Image.asset('assets/images/Logo_1.png', fit: BoxFit.contain,),
            ),
          ),
        ],
      ),
    );
  }
}
