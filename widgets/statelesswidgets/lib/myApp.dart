import 'package:flutter/material.dart';

//you can define your own widget
class myapp extends StatelessWidget{
  //let's define a constructor here
  String name;
  int age;
  myapp(this.name,this.age);

  //StatelessWidget : widget which do not have "State"(property which has been changed <-> user interface)
  // state thay doi => ham build() tu chay lai => giao dien duoc load lai
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'This is my app',
      home: Scaffold(
          body: Center(child: Text(
            // 'Hello , this lesson is about Widgets,'
            // 'this is myApp',
              'Your name is :$name and your age is $age',
              //how to increase text size?
              style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily:"monospace",
                color: Colors.blue,
                backgroundColor: Colors.greenAccent,

              ),
              textDirection: TextDirection.ltr))//Text,Center:the card will be aligned with centers X, and Y in the card center,
      ),
    );

  }

}