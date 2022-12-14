import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/custom_rating.dart';

class FoodItem extends StatelessWidget {
  final int id;
  final String imageStr;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final double rating;
  const FoodItem({Key? key,
    required this.id,
    required this.imageStr,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(2, 4),),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                imageStr,
                height: size.height / 7,
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(name, style: const TextStyle(fontSize: 16),),
                          const Expanded(child: SizedBox(),),
                          SizedBox(
                            width: 50,
                            height: 18,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text('${quantity}x', style: const TextStyle(fontSize: 13, color: Colors.red),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size1,),
                      Row(
                        children: [
                          Text(description, style: const TextStyle(fontSize: 12, color: Colors.grey,),),
                        ],
                      ),
                      SizedBox(height: size1 * 2.2,),
                      Row(
                        children: [
                          const SizedBox(
                            width: 9,
                            height: 19,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('\$', style: TextStyle(fontSize: 13, color: Colors.red),),
                            ),
                          ),
                          Text(price.toStringAsFixed(2), style: const TextStyle(fontSize: 18),),
                          const Expanded(child: SizedBox(),),
                          CustomRating(
                            emptyIcon: Icons.star_border,
                            halfIcon: Icons.star_half,
                            fullIcon: Icons.star,
                            iconSize: 16,
                            iconColor: Colors.orange,
                            itemCount: 5,
                            rating: rating
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
