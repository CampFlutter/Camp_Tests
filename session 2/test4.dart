void main() {
  print(isOdd(1));
  print(isEven(8));

  f1(
    b: 2,
    a: 1,
  );
  f2(a: 2);
  f3(b: 1, 2);
  var func = (int a) {
    return a * a;
  };
  func(
    2,
  );

  [1, 2, 3, 4].forEach(printElement);
  [1, 2, 3, 4].forEach((element) {
    print(element);
  });

  int Function(int) power = func;
  print(power(9));
}

bool isOdd(int num) {
  return num % 2 != 0 ? true : false;
}

bool isEven(int num) => num % 2 == 0;

void f1({var a, var b}) {}

void f2({required int a, int b = 0}) {}

void f3(int a, {int b = 0}) {}

void f4(int a, [int b = 0]) {}

void printElement(int element) {
  print(element * 2);
}
