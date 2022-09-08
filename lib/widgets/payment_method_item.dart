import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  final int id;
  final String paymentType;
  final bool isSelected;
  final onPressed;
  const PaymentMethodItem({Key? key,
    required this.id,
    required this.paymentType,
    required this.isSelected,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9),
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(2, 3),),
        ],
      ),
      child: Row(
        children: [
          Text(paymentType),
          const Expanded(child: SizedBox(),),
          SizedBox(
            width: 18,
            height: 18,
            child: InkWell(
              onTap: onPressed,
              child: Image.asset(isSelected
                  ? 'assets/images/Radio_Button_On.png'
                  : 'assets/images/Radio_Button_Off.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
