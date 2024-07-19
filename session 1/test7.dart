void main() {
  late String a;
  print(a);
  String name = 'Mohsen';
  String lastName = 'Javadian';
  
  int age = 25;
  num height = 1.79;
  double weight = 70.6;
  print(
    'Name:"$name", '
    "Last name:'$lastName'"
    '\n'
    'Bmi:${(weight / (height * height)).toStringAsFixed(2)}, Age:$age',
  );
}
