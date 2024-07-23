void main() {
  try {
    noSuchMethodError();

    rangeError(5);

    formatException();

    nullCheckException();

    //throw 'fault';

    print('Enf of try');
  } on FormatException catch (e) {
    print(e);
  } on String {
    print('string exception');
  } catch (e) {
    print('unknown exception: $e');
  }
  print('End of main');
}

void noSuchMethodError() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void rangeError(int i) {
  var list = [1, 2, 3];
  print(list[i]);
}

void formatException() {
  print(double.parse('1,1'));
}

void nullCheckException() {
  String? text;
  print(text!);
}
