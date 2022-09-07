import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: size.width,
              child: Image.asset('assets/images/Logo_2.png', fit: BoxFit.contain,),
            ),
          ),
          Positioned(
            top: size.height / 2,
            child: SizedBox(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Welcome', style: TextStyle(fontSize: 35, color: Colors.red),),
                    //SizedBox(height: size1 * 2,),
                    Row(
                      children: const [
                        Expanded(child: SizedBox(),),
                        Text(
                          "Lorem ipsum dolor sit amet, consect-"
                              "\n  etur adipiscing elit. Vivamus et felis"
                              "\n     dolor. Donec vitae facilisis velit.",
                          style: TextStyle(color: Colors.grey),
                          //softWrap: true,
                        ),
                        Expanded(child: SizedBox(),),
                      ],
                    ),
                    SizedBox(height: size1 * 11,),
                    CustomButton(
                      onPressed: () { print('Login Pressed'); },
                      buttonText: 'Login',
                      textColor: Colors.white,
                      buttonColor: Colors.red,
                      borderColor: Colors.red,
                    ),
                    SizedBox(height: size1 * 2.5,),
                    CustomButton(
                      onPressed: () { print('Sign up Pressed'); },
                      buttonText: 'Sign up',
                      textColor: Colors.red,
                      buttonColor: Colors.white,
                      borderColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
