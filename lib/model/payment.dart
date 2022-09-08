class Payment {
  static int increment = 0;
  int id = 0;
  final String paymentType;
  bool isSelected = false;

  Payment({required this.paymentType, required this.isSelected}) {
    increment++;
    id = increment;
  }
}