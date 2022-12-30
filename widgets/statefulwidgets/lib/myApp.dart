import 'package:flutter/material.dart';

//you can define your own widget
class myapp extends StatefulWidget{
  //StatefulWidget duoc tao thanh tu 2 class
  //public class ke thua tu StatefulWidget
  //private class de ve giao dien qua ham buld
  //constructor
  String name;
  int age;
  myapp(this.name,this.age);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}
class _myAppState extends State<myapp>{
  String _email ='';//this is state
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //how to add state
    // TODO: implement build
    return MaterialApp(
      title: "This is a StatefulWidget",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  //how to get value form TextField ? Use TextEditingController
                  controller: emailEditingController,
                  onChanged: (text){
                    this.setState(() {
                      _email = text; //when state changed => build return => reload widget
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      ),
                    ),
                    labelText: 'Enter your Email',
                  ),
                ),
              ),
              Text(
                _email,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "monospace",
                  color: Colors.blue,

                ),
              )
            ],
          ),
        ),
      )
    );
  }
}