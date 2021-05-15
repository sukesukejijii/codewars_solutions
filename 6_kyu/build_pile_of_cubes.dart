// https://www.codewars.com/kata/5592e3bd57b64d00f3000047

int findNb(int m) {
  var mRoot = 0;
  var n = 1;

  while (m > mRoot * mRoot) {
    mRoot += n;
    n++;
  }

  return m == mRoot * mRoot ? n - 1 : -1;
}
