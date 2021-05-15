// https://www.codewars.com/kata/58f5c63f1e26ecda7e000029

List<String> wave(String str) {
  return List.generate(str.length, (index) {
    if (str[index] == ' ') return null;
    return str.replaceFirst(str[index], str[index].toUpperCase(), index);
  })
    ..removeWhere((e) => e == null);
}
