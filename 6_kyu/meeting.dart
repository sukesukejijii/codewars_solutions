// https://www.codewars.com/kata/59df2f8f08c6cec835000012

String meeting(String s) {
  final names = s.toUpperCase().split(';').map((e) => e.split(':')).toList();
  names
    ..sort((name1, name2) => name1.first.compareTo(name2.first))
    ..sort((name1, name2) => name1.last.compareTo(name2.last));

  return names.map((e) => '(${e.last}, ${e.first})').join();
}
