

extension IterableSC<T> on Iterable<T> {
  int? sumBy(int Function(T) selector) {
    return map(selector).fold(0, (prev, curr) => prev! + curr);
  }

  double? sumByDouble(num Function(T) selector) {
    return map(selector).fold(0.0, (prev, curr) => prev! + curr);
  }

  double? averageBy(num Function(T) selector) {
    if (isEmpty) {
      return null;
    }

    return sumByDouble(selector)! / length;
  }

  T? maxBy(Comparator<T> comparator) {
    if (isEmpty) {
      return null;
    }
    return reduce(
        (value, element) => comparator(value, element) > 0 ? value : element);
  }

  T? minBy(Comparator<T> comparator) {
    if (isEmpty) {
      return null;
    }
    return reduce(
        (value, element) => comparator(value, element) < 0 ? value : element);
  }
}