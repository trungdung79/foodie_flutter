import 'package:flutter/material.dart';

import '../views/choose_address_page.dart';
import '../views/payment_method_page.dart';

class PaymentItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const PaymentItem({Key? key,
    required this.text,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 10),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(2, 3),),
        ],
      ),
      child: InkWell(
        onTap: () {
          if (text == 'Choose Address') {
            var route = MaterialPageRoute(builder: (context) => const ChooseAddressPage());
            Navigator.push(context, route);
          } else if (text == 'Payment Method') {
            var route = MaterialPageRoute(builder: (context) => const PaymentMethodPage());
            Navigator.push(context, route);
          }
        },
        child: Row(
          children: [
            Text(text),
            const Expanded(child: SizedBox(),),
            Icon(icon, size: 28,),
          ],
        ),
      ),
    );
  }
}
