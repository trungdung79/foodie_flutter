import 'package:flutter/material.dart';

class StarRow2 extends StatelessWidget {
  const StarRow2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star, color: Colors.orange, size: 16,),
        Icon(Icons.star_half, color: Colors.orange, size: 16,),
      ],
    );
  }
}
