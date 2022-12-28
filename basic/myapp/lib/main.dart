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
  /*
  var mycar = new Car();
  mycar.doSomething(); //_doSomething is a private
  mycar.sayhello("Huyn");
  // mycar.handleEvent("hand in main");
   */
  // list of car?
  List<Car> cars = <Car>[];// a bank list
  cars.add(Car('VinFast-luxury1',2018));
  cars.add(Car('VinFast-luxury2',2016));
  cars.add(Car('VinFast-luxury3',20120));
  cars.add(Car('VinFast-luxury4',2019));
  cars.forEach((car) {
    print(car);
  });
  //how to sort this list , by yearOfproduction ?
  // cars.sort((a,b)=>a.yearOfProduct.compareTo(b.yearOfProduct)); //sort by name
  cars.sort((a,b)=>b.yearOfProduct - a.yearOfProduct); //sort by integer
  //delete an item = using filter
  cars = cars.where((car) => car.name !='VinFast-luxury4').toList();
  //how to get a list of name ? use 'map'
  List<String> names=cars.map((car) => car.name).toList();
  runApp(
      Center(child: Text(
          names.toString(),
          //how to increase text size?
          style: TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr))//Text,Center:the card will be aligned with centers X, and Y in the card center
  );
}


