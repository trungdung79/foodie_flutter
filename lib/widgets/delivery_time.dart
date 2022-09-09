import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/custom_button_1.dart';
import '../views/payment_page.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(top: 20, bottom: 15, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(2, 4),),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text('Delivery Time'),
              const Expanded(child: SizedBox(),),
              SizedBox(
                width: 22,
                height: 22,
                child: Image.asset('assets/images/Time_Icon.png', fit: BoxFit.contain,),
              ),
              const SizedBox(width: 7,),
              const Text('25 mins', style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(height: 7,),
          Row(
            children: const [
              Text('Total Price'),
              Expanded(child: SizedBox(),),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(
                width: 10,
                height: 20,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('\$', style: TextStyle(fontSize: 14, color: Colors.red),),
                ),
              ),
              const Text('109.00', style: TextStyle(fontSize: 22),),
              const Expanded(child: SizedBox(),),
              CustomButton1(
                onPressed: () {
                  print('Place Order Pressed');
                  var route = MaterialPageRoute(builder: (context) => const PaymentPage());
                  Navigator.push(context, route);
                },
                buttonText: 'Place Order',
                textColor: Colors.white,
                buttonColor: Colors.red,
                borderColor: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
