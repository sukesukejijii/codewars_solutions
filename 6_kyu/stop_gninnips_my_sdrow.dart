// https://www.codewars.com/kata/5264d2b162488dc400000001

String spinWords(String str) {
  List<String> words = str.split(' ');

  words = words.map((word) {
    if (word.length >= 5)
      return word.split('').reversed.join('');
    else
      return word;
  }).toList();

  return words.join(' ');
}
