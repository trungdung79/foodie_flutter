class Address {
  static int increment = 0;
  int id = 0;
  final String title1;
  final String title2;
  final String description;
  bool isSelected = false;

  Address({
    required this.title1,
    required this.title2,
    required this.description,
    required this.isSelected
  }) {
    increment++;
    id = increment;
  }
}