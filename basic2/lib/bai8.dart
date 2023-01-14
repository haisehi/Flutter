import 'package:basic2/bai8.dart';
import 'dart:io';

// Viết chương trình (dùng hàm!) hỏi người dùng một chuỗi dài chứa nhiều từ.
//In lại cho người dùng cùng một chuỗi, ngoại trừ các từ theo thứ tự ngược.
void main(List<String> args) {
  print("Nhap vao mot chuoi");
  String sentence = stdin.readLineSync()!;
  reverseSentence(sentence);
}

void reverseSentence(String sentence) {
  String a = sentence.split(" ").reversed.toList().join(" ");
  print("gia tri tra ve la:");
  print(a);
}
