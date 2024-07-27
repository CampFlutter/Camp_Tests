import 'dart:async';
import 'dart:isolate';

void main() async {
  final waitForFibo = Completer<bool>();
  slowFib(36).then((value) {
    print('fib:$value');
    waitForFibo.complete(true);
  });
  // Isolate.run(() => slowFib(37)).then((value) {
  //   print('fib:$value');
  //   waitForFibo.complete(true);
  // });

  // try {
  //   await Isolate.run(eventualError);
  // } on StateError catch (e) {
  //   print(e.message);
  // }
  // print('In main a: $a');

  for (var i = 0; i < 100; i++) {
    if (waitForFibo.isCompleted) break;
    await Future.delayed(Duration(seconds: 1));
    print('Main:$i');
  }
}

Future<int> slowFib(int n) async =>
    n <= 1 ? 1 : await slowFib(n - 1) + await slowFib(n - 2);

int a = 0;
Future<int> eventualError() async {
  a += 5;
  print('In isolate a: $a');
  await Future.delayed(const Duration(seconds: 1));
  throw StateError("In a bad state!");
}
