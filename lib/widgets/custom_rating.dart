import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRating extends StatelessWidget {
  final IconData emptyIcon;
  final IconData halfIcon;
  final IconData fullIcon;
  final double iconSize;
  final iconColor;
  final int itemCount;
  final double rating;
  const CustomRating({Key? key,
    required this.emptyIcon,
    required this.halfIcon,
    required this.fullIcon,
    required this.iconSize,
    required this.iconColor,
    required this.itemCount,
    required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      itemSize: iconSize,
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: itemCount,
      //itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
      ratingWidget: RatingWidget(
        full: Icon(
          fullIcon,
          color: iconColor,
        ),
        half: Icon(
          halfIcon,
          color: iconColor,
        ),
        empty: Icon(
          emptyIcon,
          color: iconColor,
        ),
      ), onRatingUpdate: (double value) { },
    );
  }
}
