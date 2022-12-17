import 'package:flutter/material.dart';

String string1= "Hello Flutter , how are you ?\n";
var string2 = "I\'m fine";
var string = string1 + string2;
int x = 10;
int y = x*2;
//how to use the array?
List<int> numbers =[1,2,3,4,5];
//how to use 'map' in the array?
List<String> stringNumber = numbers.map((number){
  return 'valuer = $number';
}).toList();
void main() {
  //how to use a for?
  //classical way of iterating
  // for(int i=0;i<number.length;i++){
  //   print(number[i]);
  // }
  //forEach
  // number.forEach((number){
  //    print(number);
  // });
  stringNumber.forEach((str) {
    print(str);
  });

  runApp(
      Center(child: Text(
          '$stringNumber',
          //how to increase text size?
          style: TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr))//Text,Center:the card will be aligned with centers X, and Y in the card center
  );
}


