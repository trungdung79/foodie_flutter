class Food {
  static int increment = 0;
  int id = 0;
  final String imageStr;
  final String name;
  final String description;
  final double price;
  final int rating;

  Food({
    required this.imageStr,
    required this.name,
    required this.description,
    required this.price,
    required this.rating
  }) {
    increment++;
    id = increment;
  }
}