import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/custom_icon_button.dart';
import 'package:foodie_flutter/widgets/custom_text_button.dart';
import 'package:foodie_flutter/widgets/custom_text_input.dart';
import '../widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomIconButton(
                        onPressed: () { print('Icon Button Pressed'); },
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Center(
                      child: Text('Sign in', style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
              SizedBox(height: size1 * 9,),
              const Text('Welcome Back', style: TextStyle(fontSize: 24, color: Colors.red),),
              //SizedBox(height: size1 * 1,),
              const Text('Login to your account.', style: TextStyle(fontSize: 18, color: Colors.grey),),
              SizedBox(height: size1 * 8,),
              const CustomTextInput(
                hintText: 'Email or Phone',
                obscureText: false,
              ),
              SizedBox(height: size1 * 2,),
              const CustomTextInput(
                hintText: 'Password',
                obscureText: true,
              ),
              Row(
                children: [
                  const Expanded(child: SizedBox(),),
                  CustomTextButton(
                    onPressed: () { print('Forgot Password? Pressed'); },
                    text: 'Forgot Password?',
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ],
              ),
              SizedBox(height: size1 * 7,),
              CustomButton(
                onPressed: () { print('Login Pressed'); },
                buttonText: 'Login',
                textColor: Colors.white,
                buttonColor: Colors.red,
                borderColor: Colors.red,
              ),
              SizedBox(height: size1 * 3,),
              Row(
                children: [
                  const Expanded(child: SizedBox(),),
                  CustomTextButton(
                    onPressed: () { print('Don\'t have an account Pressed'); },
                    text: 'Don\'t have an account,',
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  const SizedBox(width: 5,),
                  CustomTextButton(
                    onPressed: () { print('Sign up Pressed'); },
                    text: 'Sign up',
                    color: Colors.red,
                    fontSize: 16,
                  ),
                  const Expanded(child: SizedBox(),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
