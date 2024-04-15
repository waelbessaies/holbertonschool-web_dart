import 'dart:math';

String longestUniqueSubstring(String str) {
  int n = str.length;
  int res = 0;
  String longestSub = "";

  List<int> lastIndex = List.filled(256, -1);

  int i = 0;

  for (int j = 0; j < n; j++) {
    i = max(i, lastIndex[str[j].codeUnitAt(0)] + 1);

    if (j - i + 1 > res) {
      res = j - i + 1;
      longestSub = str.substring(i, j + 1);
    }

    lastIndex[str[j].codeUnitAt(0)] = j;
  }
  return longestSub;
}