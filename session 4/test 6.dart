void main() {
  final p1 = Point(name: 'p1', y: 1);
  p1.show();

  final p2 = Point(name: 'p2', x: 2);
  p2.show();

  final p3 = (p1 + p2)..show();
  p1.show();
  p3.show();

  print('p3 offset:${p3.offset}');
  p3.offset = 3;
  p3.show();
}

class Point {
  final String name;
  int x;
  int y;
  late int _offset = this.x - this.y;

  Point({required this.name, this.x = 0, this.y = 0});

  void show() {
    print('Point ${name}: (${x},${y})');
  }

  Point operator +(Point other) {
    return Point(name: name, x: x + other.x, y: y + other.y);
  }

  int get offset => _offset;
  set offset(int x) {
    this.x += x;
  }
}
