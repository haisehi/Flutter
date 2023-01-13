import 'dart:io';

void main() {
  //xuất ra chữ nhập vào một từ
  stdout.write("Nhập vào một từ: ");
  //đọc từ từ màn hình và đưa vào biến input
  String? input = stdin.readLineSync()!.toLowerCase();
  // sử dụng đảo ngược chuỗi
  String revInput = input.split('').reversed.join('');

  // so sánh chuỗi xuôi và ngược
  input == revInput
      ? print("Chuỗi này là palindrome")
      : print("Chuỗi này không phải là palindrome");
}
