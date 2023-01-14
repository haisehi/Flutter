import 'package:basic2/bai9.dart';
import 'dart:io';

void main(List<String> args) {
  print("nhap so thu nhat:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("nhap so thu hai:");
  int num2 = int.parse(stdin.readLineSync()!);
  hoanDoi(num1, num2);
}

void hoanDoi(int num1, int num2) {
  int num3 = 0;
  num3 = num1;
  num1 = num2;
  num2 = num3;
  print("sau khi hoan doi: ${num1} , ${num2}");
}
