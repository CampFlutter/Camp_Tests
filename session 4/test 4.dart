void main() {
  Point p = Point();
  print('p.x:${p.x}');

  final p2 = Point()..x = 1.. y = 2.. z = 3;
  print('p2.x:${p2.x}, p2.y:${p2.y}, p2.z:${p2.z}');
}

class Point {
  int x = 0;
  int? y;
  late int z;
}
