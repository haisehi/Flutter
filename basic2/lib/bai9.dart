import 'package:basic2/bai9.dart';
import 'dart:io';

void main(List<String> args) {
  print("Nhap vao 3 so");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  soSanhBaSo(a, b, c);
}

void soSanhBaSo(int a, int b, int c) {
  if (a > b && a > c) {
    print("so lon nhat la ${a}");
  } else if (b > a && b > c) {
    print("so lon nhat la ${b}");
  } else {
    print("so lon nhat la ${c}");
  }
}
