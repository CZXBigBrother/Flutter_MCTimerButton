import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:mctimerbutton/mctimerbutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MCTimerButton shTimerButton;

  @override
  void initState() {
    shTimerButton = new MCTimerButton(
      callback: this.buttonOnClickSendMessage,
      sendtitle: "发送短信",
      time: 99,
    );
    super.initState();
  }

  void buttonOnClickSendMessage() {
    shTimerButton.state.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: new Text("停止"),
          onPressed: () {
            shTimerButton.state.stopTimer();
          },
        ),
        appBar: AppBar(
          title: const Text('MCTimerButton example'),
        ),
        body: Center(
          child: new Container(
            width: 150,
            height: 50,
            child: this.shTimerButton,
          ),
        ),
      ),
    );
  }
}
