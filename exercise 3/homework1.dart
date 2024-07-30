import 'dart:io';
import 'dart:isolate';

bool running = true;
final players = <String, Map<String, int>>{};

void main() async {
  final fbill = forceBill();
  while (running) {
    try {
      stdout.write('Enter command: ');
      String input = await Isolate.run(() => stdin.readLineSync() ?? '');
      await runCommand(input);
    } on StateError {
      print('Bad command!');
    } on FormatException {
      print('Speed must be integer!');
    } on TypeError {
      print('Player not exist!');
    } catch (e) {
      print('Error:${e} ,Type: ${e.runtimeType}');
    }
  }

  await fbill;
  print('Shop Closed!');
}

Future runCommand(String input) async {
  final inputPatterns = {
    'enter player': RegExp(
      r'\s*Enter\s*Name\s*:\s*(\w+)\s*,\s*Speed\s*:\s*(\d+(\.\d+)?)\s*',
      caseSensitive: false,
    ),
    'exit player': RegExp(
      r'\s*Exit\s*Name\s*:\s*(\w+)\s*',
      caseSensitive: false,
    ),
    'show': RegExp(
      r'\s*Show\s*',
      caseSensitive: false,
    ),
    'close': RegExp(
      r'\s*Close\s*',
      caseSensitive: false,
    )
  };

  final matchPattern = inputPatterns.keys.firstWhere(
    (pattern) => inputPatterns[pattern]?.firstMatch(input) != null,
  );
  switch (matchPattern) {
    case 'enter player':
      final match = inputPatterns['enter player']!.firstMatch(input)!;
      final name = match.group(1)!;
      final speed = int.parse(match.group(2)!);
      print(match.group(2));
      players[name] = {'speed': speed, 'bill': 0};

      eatingPlayer(name);
      break;
    case 'exit player':
      final match = inputPatterns['exit player']!.firstMatch(input)!;
      final name = match.group(1)!;
      final value = players.remove(name)!;
      showPlayers({name: value});
      break;
    case 'show':
      showPlayers(players);
      break;
    case 'close':
      running = false;
      showPlayers(players);
      players.clear();
      break;
  }
}

void showPlayers(Map players) {
  if (players.isEmpty) return;
  print('-----------------------------------');
  players.forEach(
    (name, value) {
      print('Name: $name, bill: ${value['bill']}');
    },
  );
  print('-----------------------------------');
}

Future eatingPlayer(String name) async {
  while (players.containsKey(name)) {
    await Future.delayed(Duration(seconds: 1));
    players[name]?['bill'] = players[name]!['bill']! + 100;
  }
}

Future forceBill() async {
  while (running) {
    await Future.delayed(Duration(seconds: 1));
    players.values.forEach((player) {
      player['bill'] = player['bill']! + 10 * player.length;
    });
  }
}
