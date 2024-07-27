void main() {
  final p1 = Point('p1', 1, 1);
  showPoint(p1);

  final p2 = Point.namedCTPoint(name: 'p2', x: 2)..y = 2;
  showPoint(p2);

  final p3 = Point.factoryPoint('1,3');
  showPoint(p3);

  final p4 = Point.fromJson({'name': 'p4', 'x': 2, 'y': 4});
  showPoint(p4);
}

void showPoint(Point p) {
  print('Point ${p.name}: (${p.x},${p.y})');
}

class Point {
  final String name;
  int x;
  int y;

  // default constructor
  Point(this.name, this.x, this.y);

  Point.namedCTPoint({required this.name, required this.x, this.y = 0});

  factory Point.factoryPoint(String p) {
    final xy = p.split(',');
    final x = int.parse(xy[0]);
    final y = int.parse(xy[1]);
    return Point('factoryPoint', x, y);
  }

  Point.fromJson(Map json)
      : name = json['name'],
        x = json['x'],
        y = json['y'];
}
