// https://www.codewars.com/kata/59c633e7dcc4053512000073

import 'dart:math';

int solve(String s) {
  return s.split(RegExp('[aiueo]+')).map((consonant) {
    return consonant.codeUnits.fold<int>(0, (acc, code) => acc + (code - 96));
  }).reduce(max);
}
