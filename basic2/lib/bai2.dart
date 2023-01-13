import 'package:basic2/bai2.dart';
import 'dart:io';

//Yêu cầu người dùng cho một số. Tùy theo số chẵn hay lẻ mà in ra thông báo thích hợp cho người dùng.
void main(List<String> args) {
  print("Vui long nhap vao 1 so:");
  int? number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("${number} la so chan");
  } else {
    print("${number} la so le");
  }
}
