// https://www.codewars.com/kata/5277c8a221e209d3f6000b56

bool validBraces(String braces) {
  var remainder = braces;
  var emptyBraces = RegExp(r'\(\)|\[\]|\{\}');

  do {
    remainder = remainder.replaceAll(emptyBraces, '');
  } while (emptyBraces.hasMatch(remainder));

  return remainder.isEmpty;
}
