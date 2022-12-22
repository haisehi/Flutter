import 'package:baic/main.dart';
import 'dart:io';

// input and output in dart
void main() {
  print("enter your name");
  String? name = stdin.readLineSync();
  print("My name is ${name}");
  print("enter your age");
  int? age = int.parse(stdin.readLineSync()!);
  print(age);
  stdout.write("your name is ${name} and your age is ${age}");
}
