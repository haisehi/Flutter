import 'package:baic/condition.dart';
import 'dart:io';

void main() {
  print("nhap 2 so de so sanh");
  int? dk1 = int.parse(stdin.readLineSync()!);
  int? dk2 = int.parse(stdin.readLineSync()!);
  if (dk1 > dk2) {
    print("so thu nhat lon hon so thu hai");
  } else {
    print("so thu hai lon hon so thu nhat");
  }
}
