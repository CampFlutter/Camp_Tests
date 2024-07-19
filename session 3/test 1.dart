void main() {
  try {
    misbehave();
    double.parse('1,1');
    throw 'fault';
  } on FormatException catch (e) {
    print(e);
  } on String {
    print('string exception');
  } catch (e) {
    print('unknown exception');
  }
}

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}
