void main() {
  final numbers = <num>[1, 2, 3.3, 5, 7.6, 2.1, 32.0, 22, 43.2, 13];
  for (var value in numbers) {
    if (value is int) {
      print('$value is int, power 2 is ${power2(value)}');
    } else {
      value as double;
      print('$value is double, power 3 is ${power3(value).toStringAsFixed(1)}');
    }
  }
}

int power2(int n) => n * n;

double power3(double n) {
  return n * n * n;
}
