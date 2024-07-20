void main() {
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  halogens.add('astatine');
  print(halogens.length);
  print(halogens.toList()[1]);
}
