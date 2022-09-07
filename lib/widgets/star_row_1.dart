import 'package:flutter/material.dart';

class StarRow1 extends StatelessWidget {
  const StarRow1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
      ],
    );
  }
}
