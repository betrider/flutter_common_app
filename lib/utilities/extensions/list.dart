extension SumList on List<int> {
  int get sum => fold(0, (a, b) => a + b);
}
