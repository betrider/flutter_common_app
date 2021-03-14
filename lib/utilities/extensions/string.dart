extension StringSC on String {
  
  int? toInt({int radix = 10}) {
    try {
      return int.parse(this, radix: radix);
    } catch (error) {
      return null;
    }
  }

  double? toDouble() {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }
}