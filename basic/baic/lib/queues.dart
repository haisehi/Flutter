import 'package:baic/queues.dart';
import 'dart:collection';

void main() {
  // create a queue
  Queue<String> exemple1 = new Queue<String>();
  // print a queue
  print(exemple1);
  // adding element in a queue
  exemple1.add('queue 1');
  exemple1.add('queue 2');
  exemple1.add('queue 3');
  exemple1.add('queue 4');
  // insert element in queue
  print(exemple1);
}
