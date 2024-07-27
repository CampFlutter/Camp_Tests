import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();

  final isolate = await Isolate.spawn(findPrimes, receivePort.sendPort);

  await for (final message in receivePort) {
    if (message is int) {
      print('Prime number: $message');
      if (message >= 100) {
        isolate.kill(priority: Isolate.immediate);
        receivePort.close();
        break;
      }
    }
  }
}

void findPrimes(SendPort sendPort) {
  int number = 2;
  while (true) {
    if (isPrime(number)) {
      sendPort.send(number);
    }
    number++;
  }
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
