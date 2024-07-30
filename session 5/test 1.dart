void main() {
  final p3 = Point3d.create(name: 'p3', x: 0, y: 1, z: 3);
  p3.show();

  Point2d p = Point3d(name: 'p', x: 2);
  print(p is Point3d);
  print((p as Point3d).z);
}

class Point2d {
  final String name;
  int x;
  int y;
  late int _offset = this.x - this.y;

  Point2d({required this.name, this.x = 0, this.y = 0});

  void show() {
    print('Point ${name}: (${x},${y})');
  }

  Point2d operator +(Point2d other) {
    return Point2d(name: name, x: x + other.x, y: y + other.y);
  }

  int get offset => _offset;
  set offset(int xp) {
    x += xp;
  }
}

class Point3d extends Point2d {
  int z;
  Point3d({required super.name, super.x, super.y, this.z = 0});

  Point3d.create({
    required String name,
    required int x,
    required int y,
    required this.z,
  }) : super(name: name, x: x, y: y) {
    _offset = 1;
  }
}
