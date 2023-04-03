import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _app2();
  }
}
class _app2 extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            //widget 1 : container dung de bao boc cac widget con khac
            color: Colors.lightBlue,
            width: 300,
            height: 300,
            child: Column(
              children: <Widget>[
                TextField(
                  //widget2
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Text Field 1"
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextField(
                  //widget3
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Text Field 2",
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  //widget 4
                  'Text Widget',style: TextStyle(color: Colors.white),),
                SizedBox(height: 20),
                ElevatedButton(
                    //widget 5
                    style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
                    child: Text('ElevatedButton'),onPressed: (){}),
              ],
            ),
          ),
        )
      ),
    );
  }
}