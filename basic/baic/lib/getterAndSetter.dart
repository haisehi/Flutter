import 'package:baic/getterAndSetter.dart';

class student {
  String name;
  int age;

  student(this.name, this.age);

  String get student_name {
    return name;
  }

  void set student_name(String name) {
    this.name = name;
  }

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}

void main() {
  student s1 = new student("huy", 20);
  print("${s1.student_name} ${s1.stud_age}");
}
