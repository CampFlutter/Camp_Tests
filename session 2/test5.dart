void main() {
  int a = 6;

  if (a == 2) {
    print(a);
  } else if (a % 4 == 0) {
    print(a / 4);
  } else {
    print(a);
  }

  switch (a) {
    case 1:
      a--;
      break;
    case 2:
      a++;
      break;
    default:
      print('switch:$a');
  }
}
