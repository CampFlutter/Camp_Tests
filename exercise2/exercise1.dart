void main() {
  final stringList = ['1.2', '3.1', '4.3', '7.4', '11.7', '18.11'];

  final doubleList = <double>[];
  for (var i = 0; i < stringList.length; i++) {
    doubleList.add(
      double.parse(stringList[i]),
    );
  }

  final finalList = <String>[];
  for (var element in doubleList) {
    finalList.add(element.round().toString());
  }
  int a = 0;
  while (a < finalList.length) {
    print(finalList[a++]);
  }
  finalList.forEach(print);
}
