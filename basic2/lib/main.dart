import 'package:basic2/main.dart';
import 'dart:io';

// Tạo một chương trình yêu cầu người dùng nhập tên và tuổi của họ.
//In ra một thông báo cho biết họ phải sống 100 tuổi trong bao nhiêu năm nữa.

void main() {
  print("Vui long nhap ten :");
  String? name = stdin.readLineSync();
  print("Vui long nhap tuoi :");
  int? age = int.parse(stdin.readLineSync()!);
  print("${name} phai song 100 tuoi trong ${100 - age} nam tiep theo");
}
