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
class _myAppState extends State<myapp> with WidgetsBindingObserver{
  /*
  when a widget is created and runing . there are 3 functions that we say concern:
  1.initState
  2.buid() is triggered when we call setState(..)
  3.dispore() is called when state/widget object is removed
  Now we try to test these functions/method
  */

  String _email ='';//this is state
  final emailEditingController = TextEditingController();
  //initState
  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print("Run initState()");
  }
  //dispore
  @override
  void dispore(){
    super.dispose();
    emailEditingController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    print('Run dispore()');
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state){
    super.didChangeAppLifecycleState(state);
    if(state ==AppLifecycleState.paused){
      print("App is in Background mode");
    }else if(state == AppLifecycleState.resumed){
      print("App is in Foreground mode");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Run build()");
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