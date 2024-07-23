void main() {
  delayed(1).then((value) => print('main: delayed was run.'));
  // .timeout(
  //   Duration(seconds: 2),
  //   onTimeout: () {
  //     print('main: f2 timed out.');
  //   },
  // );
  print('Main: Next of delayed.');

  testException();

  print('main is finished.');
}

Future delayed(int time) async {
  await Future.delayed(Duration(seconds: time));
  print('delayed was run.');
}

Future<int> greatPower(num n) async {
  if (n is double) throw 'double is not allowed!';
  await Future.delayed(Duration(seconds: 2));
  n as int;
  return n * n;
}

void testException() async {
  try {
    // final p = await greatPower(3);
    // print('testException: power2: $p');

    greatPower(3.1)
        .then((value) => print('power2: $value'))
        .onError((error, stackTrace) => print('onError: $error'));
  } catch (e) {
    print('testException catch: $e');
  }
}
