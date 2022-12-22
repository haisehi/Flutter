import 'package:flutter/material.dart';
import 'calculation.dart';//calculation is a 'module'
import 'car.dart';//car is a 'module'
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
  // stringNumber.forEach((str) {
  //   print(str);
  // });

  var mycar = new Car("VinFast-luxury",2022);
  mycar.doSomething();
  mycar.sayhello("Huyn");
  // mycar.handleEvent("hand in main");
  runApp(
      Center(child: Text(
          '${mycar.toString()}',
          //how to increase text size?
          style: TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr))//Text,Center:the card will be aligned with centers X, and Y in the card center
  );
}


