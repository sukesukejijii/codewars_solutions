// https://www.codewars.com/kata/5c6d80d7ff00de2dcc4d4188

List<String>? DiagonalsOfSquare(List<String?>? array) {
  if (array == null) {
    return null;
  } else if (array.isEmpty ||
      array.contains(null) ||
      array.any((e) => e!.length != array.length)) {
    return null;
  }

  final sortList = [...array]..sort();
  final searchList = List.of(sortList);

  final answer = array.map((e) {
    final uniqueIndex = searchList.indexOf(e);
    searchList.replaceRange(uniqueIndex, uniqueIndex + 1, [null]);

    final tempList = List.of(sortList);
    tempList
      ..addAll(tempList.sublist(0, uniqueIndex))
      ..removeRange(0, uniqueIndex);

    for (var i = 0; i < tempList.length; i++) {
      tempList[i] = tempList[i]![i];
    }
    return tempList.join();
  }).toList();

  return answer;
}
