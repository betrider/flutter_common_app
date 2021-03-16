///extensions on [Iterable<double>] like [List<double>] and [Set<double>].

import 'iterable_object.dart';

extension IterableDouble on Iterable<double>{

  ///합계
  double? sum() {
    return sumByDouble((n) => n);
  }

  ///평균
  double? average() {
    return averageBy((n) => n);
  }

  ///최대값
  double? max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  ///최소값
  double? min() {
    return minBy((a, b) => a.compareTo(b));
  }
}