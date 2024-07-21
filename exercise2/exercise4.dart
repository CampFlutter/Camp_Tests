void main() {
  final text =
      'Dart was unveiled at the GOTO conference in Aarhus, Denmark, October Lars Bak and Kasper Lund founded the project Dart was released in November, Dart had a mixed reception at first. Some criticized the Dart initiative for fragmenting the web because of plans to include a Dart VM in Chrome. Those plans were dropped in with the Dart release. Focus changed to compiling Dart code to JavaScript.';
  final words = text.split(' ');

  final numLetter = <int, int>{};

  words.forEach((element) {
    if (numLetter.containsKey(element.length)) {
      numLetter[element.length] = numLetter[element.length]! + 1;
    } else {
      numLetter[element.length] = 1;
    }
  });

  final sortedKey = numLetter.keys.toList()..sort();
  sortedKey.forEach((num) {
    print('$num letter(s): ${numLetter[num]}');
  });
}
