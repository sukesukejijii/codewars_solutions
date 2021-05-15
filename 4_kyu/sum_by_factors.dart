// https://www.codewars.com/kata/54d496788776e49e6b00052f

String sumOfDivided(List<int> l) {
  final primeList = [];
  l.forEach((e) {
    var result = e.abs();
    for (var i = 2; i <= result; i++) {
      while (result % i == 0) {
        primeList.add(i);
        result = result ~/ i;
      }
    }
  });
  primeList.sort();

  final answer = primeList.toSet().map((e) {
    final sum = l.where((v) => v % e == 0).reduce((v, e) => v + e);
    return '($e $sum)';
  });

  return answer.join();
}
