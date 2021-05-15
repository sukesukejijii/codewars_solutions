// https://www.codewars.com/kata/515f51d438015969f7000013

List<List<int>> pyramid(int n) {
  List<List<int>> pyramid = [];
  List<int> floor = [];

  for (var i = 1; i <= n; i++) {
    if (n == 0) break;
    floor.add(1);
    pyramid.add([...floor]);
  }

  return pyramid;
}
