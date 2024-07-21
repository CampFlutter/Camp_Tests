void main() {
  final text =
      'Dart is an approachable, portable, and productive language for high-quality apps on any platform.';
  final words = text.split(' ');
  for (var i = 0; i < words.length; i++) {
    if (words[i].length == 3) {
      words[i] = words[i].toUpperCase();
    }
  }

  print(words.join(' '));
}
