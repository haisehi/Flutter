import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//you can define your own widget
class myapp extends StatefulWidget{
  //StatefulWidget duoc tao thanh tu 2 class
  //public class ke thua tu StatefulWidget
  //private class de ve giao dien qua ham buld
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}
class _myAppState extends State<myapp> with WidgetsBindingObserver{
  //initState
  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  //dispore
  @override
  void dispore(){
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    //how to display a Datetime
    DateTime now = new DateTime.now();
    // TODO: implement build
    return MaterialApp(
      title: "This is a StatefulWidget",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text(
                // DateFormat('yyyy/MM/dd').format(now),
                DateFormat.yMMMd().format(now),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
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