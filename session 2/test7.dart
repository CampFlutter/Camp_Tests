void main() {
  int i = 0;
  while (i < 5) {
    print('while loop:${i++}');
  }

  do {
    print('do while lopp$i');
  } while (i < 4);

  for (var j = 0; j < 6; j++) {
    print('for loop:$i');
  }

  var list = [1, 2, 3, 4, 5];
  for (var element in list) {
    if (element % 2 == 1) continue;
    print('for in loop:$i');
    if (element % 3 == 0) break;
  }
}
