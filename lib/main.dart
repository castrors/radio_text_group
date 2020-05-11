import 'package:flutter/material.dart';
import 'package:radio_edit_text/counter_data.dart';
import 'package:radio_edit_text/radio_text_group.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          body: SafeArea(
              child: Column(
        children: <Widget>[
          RadioTextGroup(),
          Center(
            child: RaisedButton(
              child: Text('Incrementar'),
              onPressed: () {
                setState(() {
                  CounterData.increment();
                });
              },
            ),
          ),
          Center(child: Text('O total é ${CounterData.getTotal()}'),)
        ],
      ))),
    );
  }
}
