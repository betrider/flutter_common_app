///extensions on [Iterable<int>] like [List<int>] and [Set<int>].

import 'iterable_object.dart';

extension IterableInt on Iterable<int>{

  ///합계
  int? sum() {
    return sumBy((n) => n);
  }

  ///평균
  double? average() {
    return averageBy((n) => n);
  }

  ///최대값
  int? max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  ///최소값
  int? min() {
    return minBy((a, b) => a.compareTo(b));
  }

}