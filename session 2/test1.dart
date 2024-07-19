void main() {
  List list = [
    'Car',
    1,
    ['Plane', 2],
  ];
  List<String> list2 = [
    'Car',
    'Boat',
    'Plane',
  ];
  var list3 = <int>[1, 2, 3];
  var listTemp = List.empty(growable: true);

  print('list 2 length:${list2.length}');

  print((list[2][0]));

  List<List<dynamic>> list2n = [];
  list2n.add([1, 2, 3]);
  print('Value: ${list2n.first.last}');

  var list4 = [...list3, 4, ...list3.reversed];
  print(list4);

  var list5 = <String>[
    'cat',
    if (list2 is List<String>) ...list2,
    for (var i in list3) '$i',
  ];
  print(list5);
}
