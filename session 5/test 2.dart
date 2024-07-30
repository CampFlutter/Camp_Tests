void main() {
  Point2d p1 = Point3d(name: 'p1', x: 1, y: 3, z: -1);
  p1.show();

  var points = <Point2d>[
    Point2d(name: 'p', x: -1, y: -2),
    p1,
    Point4d(name: 'p2', q: 4),
  ];

  points.forEach((point) => point.show());
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
  }) : super(name: name, x: x, y: y);

  @override
  void show() {
    print('Point ${name}: (${x},${y},$z)');
  }

  @override
  Point2d operator +(Point2d other) {
    return Point3d(
      name: name,
      x: x + other.x,
      y: y + other.y,
      z: (other as Point3d).z,
    );
  }
}

class Point4d extends Point3d {
  int q;

  Point4d({
    required super.name,
    super.x,
    super.y,
    super.z = 0,
    this.q = 0,
  });

  @override
  void show() {
    print('Point ${name}: (${x},${y},$z,$q)');
  }
}
