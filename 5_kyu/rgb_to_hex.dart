// https://www.codewars.com/kata/513e08acc600c94f01000001

String rgb(int r, int g, int b) {
  String convert(int x) {
    if (x > 255) x = 255;
    if (x < 0) x = 0;
    return x.toRadixString(16).toUpperCase().padLeft(2, '0');
  }

  return [r, g, b].map((e) => convert(e)).join();
}
