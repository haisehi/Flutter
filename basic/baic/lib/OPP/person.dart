// import 'package:baic/OPP/person.dart';
// import 'dart:io';
// class person {
//   String name; //public
//   int _age; //private
//   person(this.name, this._age); //contructor
//   void inputAge(int age) {
//     this._age = age; //setter
//   }
//   int get age => _age; // hàm getter
//   void _doiTen(String name) // private
//   {
//     this.name = name;
//   }
//   int layTuoi() // public
//   {
//     return this._age;
//   }
// }
// void main(List<String> args) {
//   var person1 = person("Báo Flutter", 20); // OK
//   var person2 = new person("Báo Flutter Việt Nam", 20); // OK
//   var list1 = []; // OK
//   print(person1);
//   print(person2);
// }

import 'dart:ffi';

import 'package:baic/OPP/person.dart';
import 'dart:io';

class hocSinh {
  // date private
  String _name;
  String _classroom;
  String _date;
  double _toan;
  double _van;
  double _anh;
  // constructor
  hocSinh(this._name, this._classroom, this._date, this._toan, this._van,
      this._anh);
  void nhapten(String name) {
    this._name = name;
  }

  // setter
  void nhaplop(String classroom) {
    this._classroom = classroom;
  }

  void Date(String date) {
    this._date = date;
  }

  void nhapdiemtoan(double toan) {
    this._toan = toan;
  }

  void nhapdiemvan(double van) {
    this._van = van;
  }

  void nhapdiemanh(double anh) {
    this._anh = anh;
  }

  // getter
  String get name => _name;
  String get classroom => _classroom;
  String get date => _date;
  double get toan => _toan;
  double get van => _van;
  double get anh => _anh;
  // tin thong tin
  void inThongTin() {
    print("Ho va ten : ${this.name}\n" +
        "Lop :${this.classroom} \n" +
        "Ngay sinh:${this.date}\n" +
        "diem toan:${this.toan}\n" +
        "diem van:${this.van}\n" +
        "diem anh:${this.anh}");
  }

  // tinh diem trung binh
  double diemTrungBinh() {
    return (this._toan + this._van + this._anh) / 3;
  }

  // xep loai
  void XepLoai() {
    if (diemTrungBinh() < 5) {
      print("loai yeu");
    } else if (diemTrungBinh() >= 5 && diemTrungBinh() < 6.5) {
      print("loai trung binh");
    } else if (diemTrungBinh() >= 6.5 && diemTrungBinh() < 8.5) {
      print("loai kha");
    } else {
      print("loai gioi");
    }
  }
}

void main(List<String> args) {
  print("Nhap ten:");
  String name = stdin.readLineSync()!;
  print("Nhap lop:");
  String classroom = stdin.readLineSync()!;
  print("Nhap ngay sinh:");
  String date = stdin.readLineSync()!;
  print("Nhap diem toan:");
  double toan = double.parse(stdin.readLineSync()!);
  print("Nhap diem van:");
  double van = double.parse(stdin.readLineSync()!);
  print("Nhap diem anh:");
  double anh = double.parse(stdin.readLineSync()!);
  var hocsinh = hocSinh(name, classroom, date, toan, van, anh);
  print("thong tin hoc sinh: ");
  hocsinh.inThongTin();
  print("diem trung binh 3 mon: ${hocsinh.diemTrungBinh()}");
  print("Xep loai: ");
  hocsinh.XepLoai();
}
