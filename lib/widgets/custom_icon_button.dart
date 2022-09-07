import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final onPressed;
  final double width;
  final double height;
  const CustomIconButton({Key? key,
    required this.onPressed,
    required this.width,
    required this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              child: Transform.rotate(
                angle: (45 * (3.1415927 / 180)),
                child: Container(
                  // Container.color should not be set when decoration is set.
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(2, 2),),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Icon(Icons.arrow_back_ios_new, size: 24,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
