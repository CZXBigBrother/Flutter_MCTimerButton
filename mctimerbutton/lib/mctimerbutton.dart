import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class MCTimerButton extends StatefulWidget {
  Key key;
  VoidCallback callback;
  int time;
  String sendtitle;
  String reSendTitle;
  String unit;
  MCTimerButton(
      {this.key,
      this.callback,
      this.sendtitle = "send message",
      this.time = 60,
      this.unit = "s"});
  MCTimerButtonState state;
  bool isRun() {
    return state.timer != null;
  }

  static const MethodChannel _channel = const MethodChannel('mctimerbutton');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  State<StatefulWidget> createState() {
    state = new MCTimerButtonState();
    return state;
  }
}

class MCTimerButtonState extends State<MCTimerButton> {
  Timer timer;
  int timenum = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
    timer = null;
    timenum = 0;
  }

  void startTimer() {
    if (timer == null) {
      timenum = widget.time;
      timer =
          new Timer.periodic(new Duration(milliseconds: 1000), this.timerFresh);
    }
  }

  void stopTimer() {
    timer?.cancel();
    timer = null;
    timenum = 0;
    this.setState(() {});
  }

  void timerFresh(Timer timer) {
    timenum -= 1;
    if (timenum <= 0) {
      this.stopTimer();
    }
    this.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String time = this.timer != null ? "${this.timenum}${widget.unit}" : widget.sendtitle;
    Color color = this.timer != null ? Colors.grey : Colors.blue;
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        if (this.timer != null) {
          return;
        }
        widget.callback();
      },
      color: color,
      textTheme: ButtonTextTheme.normal,
      child: new Text(time, style: new TextStyle(color: Colors.white)),
    );
  }
}
