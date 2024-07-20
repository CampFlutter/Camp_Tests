void main() {
  (String, String) record = ('first', 'last');
  print('r1:${record.$1}, r2:${record.$2}');

  ({double x, double y, double z}) point = getPoint(4);
  print('x: ${point.x}, y: ${point.y}, z: ${point.z}');
}

({double x, double y, double z}) getPoint(double n) =>
    (x: n, y: n * 2, z: n * n);
