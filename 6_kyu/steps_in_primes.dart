// https://www.codewars.com/kata/5613d06cee1e7da6d5000055

List<int> step(int g, int start, int end) {
  final list = <int>[];

  for (var i = start; i <= end; i++) {
    for (var j = 2; j <= i; j++) {
      if (i % j == 0 && j != i) {
        break;
      } else if (j == i) {
        list.add(i);
      }
    }
    if (list.isNotEmpty && list.contains(list.last - g)) break;
  }

  final first =
      list.singleWhere((number) => number == list.last - g, orElse: () => null);

  return first == null ? [] : [first, list.last];
}
