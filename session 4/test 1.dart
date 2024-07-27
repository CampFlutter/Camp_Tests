import 'dart:async';

void main() async {
  await for (int i in timer()) {
    print('for: $i');
    if (i == 10) break;
  }

  final subTimer = timer().listen(print);

  await Future.delayed(Duration(seconds: 5));
  subTimer.pause(Future.delayed(Duration(seconds: 3)));

  Future.delayed(Duration(seconds: 10)).then((value) => subTimer.cancel());
}

Stream<int> timer() async* {
  for (var i = 0;; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
