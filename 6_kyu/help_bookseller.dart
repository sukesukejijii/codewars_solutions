// https://www.codewars.com/kata/54dc6f5a224c26032800005c

String stockSummary(List<String> lstOfArt, List<String> lstOf1stLetter) {
  if (lstOfArt.length * lstOf1stLetter.length == 0) return '';

  final list = lstOf1stLetter.map((letter) {
    final tmpLstOfArt = List.of(lstOfArt);
    tmpLstOfArt.retainWhere((art) => art.startsWith(letter));

    if (tmpLstOfArt.isNotEmpty) {
      final sum = tmpLstOfArt
          .map((art) => int.parse(art.replaceAll(RegExp(r'^\w+ '), '')))
          .reduce((v, e) => v + e);
      return '($letter : $sum)';
    } else {
      return '($letter : 0)';
    }
  });
  return list.join(' - ');
}
