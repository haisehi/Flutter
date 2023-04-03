import 'package:flutter/material.dart';
// MaterialApp class
class app3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //tao title cua AppBar
      title: 'Flutter Demo',
      // false : tắt label "Debug" bên phải, default: true
      debugShowCheckedModeBanner: false,
      //xay dung theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Liên kết với Widget con qua từ khoá home:
      home: Scaffold(
       body: Center(
          child: Text('hello world',
            style: TextStyle(
              fontSize: 40,
              color: Colors.indigo,

            ),
          ),
        ),
      ),
    );
  }
}