// https://www.codewars.com/kata/556deca17c58da83c00002db

List<num> tribonacci(List<num> signature, int n) {
  final list = <num>[...signature];

  if (n == 0) return [];
  if (n < 4) return list.sublist(0, n);

  for (var i = 4; i <= n; i++) {
    final length = list.length;
    final sum = list[length - 1] + list[length - 2] + list[length - 3];
    list.add(sum);
  }

  return list;
}
