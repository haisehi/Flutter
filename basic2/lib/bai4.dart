import 'package:basic2/bai4.dart';
import 'dart:io';

void main(List<String> args) {
  print("Nhap vao mot so:");
  int? num = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      print(i);
    }
  }
}
