import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/choose_address_item.dart';
import 'package:foodie_flutter/widgets/custom_button_2.dart';
import 'package:foodie_flutter/widgets/custom_icon_button.dart';
import '../model/address.dart';
import '../widgets/custom_button.dart';

class ChooseAddressPage extends StatefulWidget {
  const ChooseAddressPage({Key? key}) : super(key: key);

  @override
  State<ChooseAddressPage> createState() => _ChooseAddressPageState();
}

class _ChooseAddressPageState extends State<ChooseAddressPage> {
  List<Address> addressList = [];

  @override
  void initState() {
    super.initState();
    addressList.add(Address(
        title1: 'My Home Address',
        title2: 'Home',
        description:
            '(503) 338-5200 15612 Fisher Island Dr\nMiami Beach, Florida(FL), 33109',
        isSelected: true));
    addressList.add(Address(
        title1: 'My Office Address',
        title2: 'Office',
        description:
            '(503) 338-5200 15612 Fisher Island Dr\nMiami Beach, Florida(FL), 33109',
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
                        'Choose Address',
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
                height: size.height / 2.2,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: addressList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ChooseAddressItem(
                        id: addressList[index].id,
                        title1: addressList[index].title1,
                        title2: addressList[index].title2,
                        description: addressList[index].description,
                        isSelected: addressList[index].isSelected,
                        onPressed: () {
                          setState(() {
                            for (Address address in addressList) {
                              address.isSelected = false;
                            }
                            addressList[index].isSelected = true;
                          });
                        },
                      );
                    }),
              ),
              SizedBox(
                height: size1 * 1.5,
              ),
              CustomButton2(
                  onPressed: () { print('Add New Address Pressed'); },
                  buttonText: 'Add New Address',
                  textColor: Colors.red,
                  buttonColor: Colors.white,
                  borderColor: Colors.red,
                  icon: Icons.add,
                  iconColor: Colors.red,
              ),
              SizedBox(
                height: size1 * 9,
              ),
              CustomButton(
                onPressed: () { print('Done Pressed'); },
                buttonText: 'Done',
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
