void main() {
  int a = '12'.parseInt();
  print(a);
  double d = '13.44'.parseDouble();
  print(d);

  print('    '.isBlank);
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  bool get isBlank => trim().isEmpty;
}
