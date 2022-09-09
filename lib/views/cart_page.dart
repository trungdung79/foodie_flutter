import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/delivery_time.dart';
import 'package:foodie_flutter/widgets/food_item.dart';
import '../model/food.dart';
import '../widgets/custom_icon_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Food> foodList = [];

  double get totalPrice {
    double total = 0.0;
    for (Food food in foodList) {
      total += food.price * food.quantity;
    }
    return total;
  }

  @override
  void initState() {
    super.initState();
    foodList.add(Food(
      imageStr: 'assets/images/Food_1.png',
      name: 'Fried Chicken',
      description: 'Golden browse fried chicken',
      price: 20.0,
      quantity: 2,
      rating: 4.5
    ));
    foodList.add(Food(
      imageStr: 'assets/images/Food_2.png',
      name: 'Cheese Sandwich',
      description: 'Grilled Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      rating: 4
    ));
    foodList.add(Food(
      imageStr: 'assets/images/Food_3.png',
      name: 'Egg Pasta',
      description: 'Spicy Chicken Pasta',
      price: 15.0,
      quantity: 1,
      rating: 5
    ));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 35,),
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
                    child: Text('Cart', style: TextStyle(fontSize: 20),),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 1.5,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: foodList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodItem(
                      id: foodList[index].id,
                      imageStr: foodList[index].imageStr,
                      name: foodList[index].name,
                      description: foodList[index].description,
                      price: foodList[index].price,
                      quantity: foodList[index].quantity,
                      rating: foodList[index].rating
                    );
                 }
              ),
            ),
            DeliveryTime(totalPrice: totalPrice,),
          ],
        ),
      ),
    );
  }
}
