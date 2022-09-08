import 'package:flutter/material.dart';
import 'package:foodie_flutter/model/payment.dart';
import 'package:foodie_flutter/widgets/custom_icon_button.dart';
import 'package:foodie_flutter/widgets/payment_method_item.dart';
import '../widgets/custom_button.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  List<Payment> paymentList = [];

  @override
  void initState() {
    super.initState();
    paymentList.add(Payment(
        paymentType: 'Credit, debit Card',
        isSelected: true));
    paymentList.add(Payment(
        paymentType: 'Paypal',
        isSelected: false));
    paymentList.add(Payment(
        paymentType: 'Cash on Delivery',
        isSelected: false));
  }

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
              const SizedBox(
                height: 40,
              ),
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
                      child: Text(
                        'Payment Method',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
              SizedBox(
                height: size1 * 4,
              ),
              SizedBox(
                height: size.height / 2.6,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: paymentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PaymentMethodItem(
                        id: paymentList[index].id,
                        paymentType: paymentList[index].paymentType,
                        isSelected: paymentList[index].isSelected,
                        onPressed: () {
                          setState(() {
                            for (Payment payment in paymentList) {
                              payment.isSelected = false;
                            }
                            paymentList[index].isSelected = true;
                          });
                        },
                      );
                    }),
              ),
              SizedBox(
                height: size1 * 17,
              ),
              CustomButton(
                onPressed: () { print('Next Pressed'); },
                buttonText: 'Next',
                textColor: Colors.white,
                buttonColor: Colors.red,
                borderColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
