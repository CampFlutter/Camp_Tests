import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  print('Fibonacci(n): ${fibonacciPro(number)}');
  print(db.length);
}

int fibonacci(int n) {
  if (n == 1 || n == 2)
    return 1;
  else
    return fibonacci(n - 1) + fibonacci(n - 2);
}

final db = {1: 1, 2: 1};
int fibonacciPro(int n) {
  if (db.containsKey(n)) {
    return db[n]!;
  } else {
    final f = fibonacciPro(n - 1) + fibonacciPro(n - 2);
    db[n] = f;
    return f;
  }
}
