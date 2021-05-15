// https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

int duplicateCount(String text) {
  final letters = text.toLowerCase().split('');
  letters.removeWhere((e) => letters.indexOf(e) == letters.lastIndexOf(e));
  return letters.toSet().length;
}
