// https://www.codewars.com/kata/59ccf051dcc4050f7800008f/

List<int> buddy(int start, int limit) {
  final buddyPair = <int>[];
  for (var i = start; i <= limit; i++) {
    final maybeBuddy = getDivisorSum(i);
    if (maybeBuddy != null && maybeBuddy > i) {
      if (getDivisorSum(maybeBuddy) == i) {
        buddyPair.addAll([i, maybeBuddy]);
        break;
      }
    }
  }
  return buddyPair.isEmpty ? null : buddyPair;
}

int getDivisorSum(int n) {
  final divisors = <int>[];
  for (var i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      divisors.add(i);
      if (i * divisors.first == n) break;
    }
  }
  return divisors.isEmpty ? null : divisors.reduce((v, e) => v + e);
}
