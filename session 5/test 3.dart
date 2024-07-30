void main() {
  final p1 = Point2d(name: 'p1', x: 2, y: 9);
  p1.show();
}

abstract class point {
  point({required this.name}) : points = [];

  String name;
  List<double> points;

  void show();
}

class Point2d extends point {
  Point2d({required super.name, double x = 0, double y = 0}) {
    points = [x, y];
  }

  @override
  void show() {
    print('Point ${name}: (${points[0]},${points[1]})');
  }
}
