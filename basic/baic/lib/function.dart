import 'package:baic/function.dart';
import 'dart:io';

// function calculation sum two integer number
int add(int a, int b) {
  int c = a + b;
  return c;
}

// function enter your name
void str() {
  print("welcome to dart languges");
}

void main() {
  print("Nhap so thu nhat :");
  int? a = int.parse(stdin.readLineSync()!);
  print("Nhap so thu hai :");
  int? b = int.parse(stdin.readLineSync()!);
  var output1 = add(a, b);
  print(output1);
  str();
}
