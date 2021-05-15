// https://www.codewars.com/kata/52b7ed099cdc285c300001cd

int sumOfIntervals(List<List<int>> intervals) {
  var history = <int>[];
  for (final interval in intervals) {
    history.addAll(List.generate(
        interval.last - interval.first, (i) => interval.first + i));
  }
  return history.toSet().length;
}
