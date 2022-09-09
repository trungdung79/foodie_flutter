import 'package:flutter/material.dart';
import 'package:foodie_flutter/views/register_page.dart';
import 'package:foodie_flutter/widgets/custom_icon_button.dart';
import 'package:foodie_flutter/widgets/custom_text_button.dart';
import 'package:foodie_flutter/widgets/custom_text_input.dart';
import '../widgets/custom_button.dart';
import 'cart_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
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
                          onPressed: () {
                            print('Icon Button Pressed');
                            Navigator.pop(context);
                          },
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
                  onPressed: () {
                    print('Login Pressed');
                    var route = MaterialPageRoute(builder: (context) => const CartPage());
                    Navigator.push(context, route);
                  },
                  buttonText: 'Login',
                  textColor: Colors.white,
                  buttonColor: Colors.red,
                  borderColor: Colors.red,
                ),
                SizedBox(height: size1 * 3,),
                Row(
                  children: [
                    const Expanded(child: SizedBox(),),
                    const Text(
                      'Don\'t have an account,',
                      style: TextStyle(fontSize: 16, color: Colors.grey,),
                    ),
                    const SizedBox(width: 5,),
                    CustomTextButton(
                      onPressed: () {
                        print('Sign up Pressed');
                        var route = MaterialPageRoute(builder: (context) => const RegisterPage());
                        Navigator.push(context, route);
                      },
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
      ),
    );
  }
}
