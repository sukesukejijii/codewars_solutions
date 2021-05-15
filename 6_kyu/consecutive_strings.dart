// https://www.codewars.com/kata/56a5d994ac971f1ac500003e

import 'dart:math';

String longestConsec(List strarr, int k) {
  if (strarr.isEmpty || strarr.length < k || k <= 0) return '';

  final list = <String>[];

  for (var i = 0; i < strarr.length - (k - 1); i++) {
    final String word = strarr.sublist(i, i + k).join();
    list.add(word);
  }

  final int longest = list.map((word) => word.length).reduce(max);

  return list.firstWhere((word) => word.length == longest);
}
