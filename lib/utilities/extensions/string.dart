extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

extension ExtendedString on String {
  bool get isValidName {
    return !this.contains(new RegExp(r'[0–9]'));
  }
}