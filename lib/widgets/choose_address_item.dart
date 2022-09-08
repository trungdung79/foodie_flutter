import 'package:flutter/material.dart';

class ChooseAddressItem extends StatelessWidget {
  final int id;
  final String title1;
  final String title2;
  final String description;
  final bool isSelected;
  final onPressed;
  const ChooseAddressItem({Key? key,
    required this.id,
    required this.title1,
    required this.title2,
    required this.description,
    required this.isSelected,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.only(top: 15, bottom: 20, left: 15, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(2, 4),),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(title1, style: const TextStyle(fontSize: 12),),
              const Expanded(child: SizedBox(),),
              SizedBox(
                width: 24,
                height: 24,
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
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
                ),
              ),
            ],
          ),
          const SizedBox(height: 4,),
          Row(
            children: [
              Text(title2, style: const TextStyle(fontSize: 12, color: Colors.grey,),),
              const Expanded(child: SizedBox(),),
            ],
          ),
          const SizedBox(height: 13,),
          Row(
            children: [
              Text(description, style: const TextStyle(fontSize: 12, color: Colors.grey,),),
              const Expanded(child: SizedBox(),),
            ],
          ),
        ],
      ),
    );
  }
}
