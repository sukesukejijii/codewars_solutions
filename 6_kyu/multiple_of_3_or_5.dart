// https://www.codewars.com/kata/514b92a657cdc65150000006

int solution(int n) {
  if (n.isNegative) return 0;

  final list = List<int>.generate(n, (index) => index);
  var sum = 0;

  for (final no in list) {
    if (no % 3 == 0 || no % 5 == 0) sum += no;
  }

  return sum;
}
