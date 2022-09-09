import 'package:flutter/material.dart';
import 'package:foodie_flutter/widgets/delivery_time.dart';
import 'package:foodie_flutter/widgets/food_item_type.dart';
import '../model/food.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/star_row_1.dart';
import '../widgets/star_row_2.dart';
import '../widgets/star_row_3.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Food> foodList = [];

  @override
  void initState() {
    super.initState();
    foodList.add(Food(
      imageStr: 'assets/images/Food_1.png',
      name: 'Fried Chicken',
      description: 'Golden browse fried chicken',
      price: 20.0,
      rating: 2
    ));
    foodList.add(Food(
      imageStr: 'assets/images/Food_2.png',
      name: 'Cheese Sandwich',
      description: 'Grilled Cheese Sandwich',
      price: 18.0,
      rating: 3
    ));
    foodList.add(Food(
      imageStr: 'assets/images/Food_3.png',
      name: 'Egg Pasta',
      description: 'Spicy Chicken Pasta',
      price: 15.0,
      rating: 1
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
                    if (foodList[index].rating == 1) {
                      return FoodItemType(
                        id: foodList[index].id,
                        imageStr: foodList[index].imageStr,
                        name: foodList[index].name,
                        description: foodList[index].description,
                        price: foodList[index].price,
                        rating: foodList[index].rating,
                        starWidget: const StarRow1()
                      );
                    } else if (foodList[index].rating == 2) {
                      return FoodItemType(
                        id: foodList[index].id,
                        imageStr: foodList[index].imageStr,
                        name: foodList[index].name,
                        description: foodList[index].description,
                        price: foodList[index].price,
                        rating: foodList[index].rating,
                        starWidget: const StarRow2()
                      );
                    } else {
                      return FoodItemType(
                        id: foodList[index].id,
                        imageStr: foodList[index].imageStr,
                        name: foodList[index].name,
                        description: foodList[index].description,
                        price: foodList[index].price,
                        rating: foodList[index].rating,
                        starWidget: const StarRow3()
                      );
                    }
                 }
              ),
            ),
            const DeliveryTime(),
          ],
        ),
      ),
    );
  }
}
