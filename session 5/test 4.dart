void main() {
  final p1 = Point3d(name: 'p1', x: 3, y: 5, z: 4);
  p1.show();
  p1.move(-1);
  p1.show();
}

mixin showPoint {
  String get name;
  List<double> get points;

  show() {
    print('Point $name:${points}');
  }
}

mixin movePoint {
  List<double> get points;

  void move(double offset) {
    for (var i = 0; i < points.length; i++) {
      points[i] += offset;
    }
  }
}

abstract class point {
  point({required this.name}) : points = [];

  String name;
  List<double> points;
}

class Point3d extends point with showPoint, movePoint {
  Point3d({
    required super.name,
    double x = 0,
    double y = 0,
    double z = 0,
  }) {
    points = [x, y, z];
  }
}
