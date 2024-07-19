void main() async {
  f1();

  f2(1).then((value) => print('main: f2 was run.'));
  // .timeout(
  //   Duration(seconds: 2),
  //   onTimeout: () {
  //     print('main: f2 timed out.');
  //   },
  // );

  try {
    final p = await greatPower(3);
    print('main: power2: $p');

    greatPower(3.1)
        .then((value) => print('power2: $value'))
        .onError((error, stackTrace) => print('onError: $error'));
  } catch (e) {
    print(e);
  }

  print('main was run.');
}

void f1() async {
  await Future.delayed(Duration(seconds: 1));
  print('f1 was run.');
}

Future f2(int time) async {
  await Future.delayed(Duration(seconds: time));
}

Future<int> greatPower(num n) async {
  if (n is double) throw 'double is not allowed!';
  await Future.delayed(Duration(seconds: 1));
  n as int;
  return n * n;
}
