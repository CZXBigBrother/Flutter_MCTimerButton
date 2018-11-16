# Screenshots
---
![TIMERBUTTON.gif](https://github.com/CZXBigBrother/Flutter_MCTimerButton/blob/master/mctimerbutton/example/TIMERBUTTON.gif?raw=true)
# Installation and Usage
---
To install this package, you need to add `mctimerbutton` (0.0.2 or higher) to the dependencies
list of the `pubspec.yaml` file as follow:

```yaml
dependencies:
  flutter:
    sdk: flutter

  mctimerbutton: ^0.0.3
```

# How to use
----
Add the import to mctimerbutton/mctimerbutton.dart

# create object
 ```
new MCTimerButton(
      callback: this.buttonOnClickSendMessage,
      sendtitle: "sender message",
      time: 99,
    )
```
# start time
```
    shTimerButton.state.startTimer();
```

# stop time 
```
    shTimerButton.state.stopTimer();
```
# init params
```
 MCTimerButton(
      {this.key,
      this.callback,
      this.sendtitle = "send message",
      this.time = 60,
      this.unit = "s"});
```