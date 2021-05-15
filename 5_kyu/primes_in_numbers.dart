// https://www.codewars.com/kata/54d512e62a5e54c96200019e

String primeFactors(int n) {
  var quot = n;
  var map = <int, int>{};

  for (var i = 2; i <= n; i++) {
    if (quot % i == 0) {
      while (quot % i == 0) {
        map.containsKey(i) ? map[i]++ : map[i] = 1;
        quot = quot ~/ i;
      }
      if (quot == 1) break;
    }
  }

  var list = <String>[];

  map.forEach((key, value) =>
      value == 1 ? list.add('($key)') : list.add('($key**$value)'));

  return list.join();
}
