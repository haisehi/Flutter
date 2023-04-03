import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//Flutter cơ bản-Layout với SafeArea,Column, FlatButton, TextField
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
  final GlobalKey<ScaffoldState> _scafoldkey = new GlobalKey<ScaffoldState>();
  final _contentController = TextEditingController();
  final _amountController = TextEditingController();
  //state
  String _content='';
  String _amount='';
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
    // TODO: implement build
    return MaterialApp(
      title: "This is a StatefulWidget",
      home: Scaffold(
        body: SafeArea(
          //safeArea dung de noi trong man hinh khong bi trang vien
          minimum: const EdgeInsets.only(left: 20 ,right: 20),
          child:
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                TextField(
                  decoration: InputDecoration(labelText: 'Content'),
                    controller: _contentController,
                      onChanged:(text){
                      setState(() {
                        _content= text;
                      });
                      },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount(Money)'),
                    controller: _amountController,
                    onChanged:(text){
                    setState(() {
                      _amount= text;
                    });
                    },
                ),
                TextButton(
                  child: Text('Insert Transaction',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.pink,
                      fontSize: 20
                    ),
                  ),
                  onPressed:(){
                    print('Content =${_content}, money\' amount =${_amount}');
                    //display UI
                    // _scafoldkey.currentState!.showSnackBar(
                    //     SnackBar(content: Text('Content = $_content, Amount = $_amount'),
                    //       duration: Duration(seconds: 3),
                    //     ),);
                          },
                        ),
              ],
            ),
          ),
        )
      );
  }
}