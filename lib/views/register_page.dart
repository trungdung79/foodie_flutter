import 'package:flutter/material.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_input.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
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
                        child: Text('Sign up', style: TextStyle(fontSize: 18),),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                  ],
                ),
                SizedBox(height: size1 * 6,),
                const Text('Register', style: TextStyle(fontSize: 24, color: Colors.red),),
                const Text('Create your new account.', style: TextStyle(fontSize: 18, color: Colors.grey),),
                SizedBox(height: size1 * 6,),
                const CustomTextInput(
                  hintText: 'Full Name',
                  obscureText: false,
                ),
                SizedBox(height: size1 * 2,),
                const CustomTextInput(
                  hintText: 'Email or Phone',
                  obscureText: false,
                ),
                SizedBox(height: size1 * 2,),
                const CustomTextInput(
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: size1 * 2,),
                const CustomTextInput(
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Column(
                        children: [
                          const SizedBox(height: 15,),
                          Row(
                            children: const [
                              Text('I agree to your', style: TextStyle(color: Colors.grey),),
                              Text(' privacy policy', style: TextStyle(color: Colors.red),),
                              Text(' and', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.7,
                            child: const Text('term & conditions', style: TextStyle(color: Colors.red),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size1 * 8,),
                CustomButton(
                  onPressed: () {
                    print('Sign up Pressed');
                    var route = MaterialPageRoute(builder: (context) => const LoginPage());
                    Navigator.push(context, route);
                  },
                  buttonText: 'Sign up',
                  textColor: Colors.white,
                  buttonColor: Colors.red,
                  borderColor: Colors.red,
                ),
                SizedBox(height: size1 * 3,),
                Row(
                  children: [
                    const Expanded(child: SizedBox(),),
                    Text(
                      'Already an account,',
                      style: TextStyle(fontSize: 16, color: Colors.grey,),
                    ),
                    const SizedBox(width: 5,),
                    CustomTextButton(
                      onPressed: () {
                        print('login Pressed');
                        var route = MaterialPageRoute(builder: (context) => const LoginPage());
                        Navigator.push(context, route);
                      },
                      text: 'login',
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
