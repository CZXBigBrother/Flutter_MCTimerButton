# mctimerbutton

A new flutter plugin project.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/developing-packages/#edit-plugin-package).

![TIMERBUTTON.gif](https://github.com/CZXBigBrother/Flutter_MCTimerButton/blob/master/mctimerbutton/example/TIMERBUTTON.gif?raw=true)
# 创建对象
 ```
new MCTimerButton(
      callback: this.buttonOnClickSendMessage,
      sendtitle: "发送短信",
      time: 99,
    )
```
# 开始倒数计时
```
    shTimerButton.state.startTimer();
```

# 强制停止 
```
    shTimerButton.state.stopTimer();
```