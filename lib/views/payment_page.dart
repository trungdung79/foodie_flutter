import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/custom_icon_button.dart';
import 'package:foodie_flutter/widgets/payment_item.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
            //mainAxisSize: MainAxisSize.min,
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
                      child: Text('Payment', style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
              SizedBox(height: size1 * 7,),
              const PaymentItem(
                text: 'Choose Address',
                icon: Icons.navigate_next,
              ),
              SizedBox(height: size1 * 2.6,),
              const PaymentItem(
                text: 'Payment Method',
                icon: Icons.navigate_next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
