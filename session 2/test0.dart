void main() {
  int? a;
  print(a == null);
 // int b = a ?? 1;
  print(a ?? 'a is null');
  int? b = 1;
  print(b?.isNegative ?? "b is null");
}
