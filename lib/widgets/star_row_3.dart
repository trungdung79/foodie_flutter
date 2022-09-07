import 'package:flutter/material.dart';

class StarRow3 extends StatelessWidget {
  const StarRow3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star_border, color: Colors.orange, size: 16,),
      ],
    );
  }
}
