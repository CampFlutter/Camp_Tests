void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  Map<dynamic, String> map1 = {
    1: '1',
    '2': '1',
  };

  gifts['fourth'] = 'calling birds'; // Add a key-value pair

  print(gifts['second']);
  print(nobleGases.keys);
  print(nobleGases.values);
}
