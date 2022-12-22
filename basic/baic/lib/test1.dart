import 'package:baic/test1.dart';

// isEmpty or isNotEmpty
void empty() {
  var coffees = [];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  print(coffees.isEmpty);
  print(teas.isNotEmpty);
}

// forEach()
void foreach() {
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((element) {
    print(element);
  });
}

void main() {
  print("empty");
  empty();
  print("for each");
  foreach();
}
