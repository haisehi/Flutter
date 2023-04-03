import 'package:flutter/material.dart';

class App1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          body: Center(
            //tao cot
            child: Column(
              //can truc o vi tri giua
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //hang 1
                Text('You have pushed the button this many times:',),
                //hang 2
                Text(
                  '_counter',
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          ),
        )
    );
  }
}