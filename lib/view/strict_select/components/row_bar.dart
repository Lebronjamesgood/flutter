import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/util/color.dart';



class RowBar extends StatefulWidget{
   final bool showTime;
   final String widgetTitle;

  const RowBar({
   Key key,
   this.showTime,
   this.widgetTitle,
  }):super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _RowBar();
  }
}


class _RowBar extends State<RowBar>{
  var _time = ['12','00','00'];
  Timer timer;

  var  _timeInt;
  @override
  Widget build(BuildContext context) {
    _timeInt = ((int.parse(_time[0])*60*60) + (int.parse(_time[1])*60) + (int.parse(_time[2])))*1000;
    // TODO: implement build
    return new Container(
      alignment:Alignment.center,
      height: 22,
      margin: EdgeInsets.fromLTRB(0, 18, 16, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          Container(
            width: 3,
            color: HexColor('#206cfe'),
          ),
          Container(
            child:Text(
              widget.widgetTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            )
          ),

          Container(
              child: !widget.showTime ? null :
              Text(
                '倒计时',
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor('f73411'),
                ),
              )
          ),
          Container(
              color: HexColor('FFE4E1'),
              padding: EdgeInsets.all(2),
            child:!widget.showTime ? null :
            Text(
                _time[0],
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor('f73411'),

                ),
              )
          ),
          Container(
            width: 2,
            child:!widget.showTime ? null :
            Text(
              ':',
              style: TextStyle(
                fontSize: 14,
                color: HexColor('f73411'),
              ),
            )
          ),
          Container(
              color: HexColor('FFE4E1'),
              padding: EdgeInsets.all(2),
              child:!widget.showTime ? null :
              Text(
                _time[1],
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor('f73411'),
                ),
              )
          ),
          Container(
            width: 2,
            child:!widget.showTime ? null :
            Text(
              ':',
              style: TextStyle(
                fontSize: 14,
                color: HexColor('f73411'),
              ),
            )
          ),
          Container(
              color: HexColor('FFE4E1'),
              padding: EdgeInsets.all(2),
              child:!widget.showTime ? null :
              Text(
                _time[2],
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor('f73411'),
                ),
              )
          ),
          Container(
              child:Text(
                '更多 >',
                style: TextStyle(
                  fontSize: 16,
                  color: HexColor('36383a')
                ),
              )
          ),
        ]
      ),
    );
  }

  @override
  initState(){
    super.initState();
     timer = Timer.periodic(Duration(seconds: 1), (timer) {
       getTime();
     });
  }
  getTime(){
     _timeInt = _timeInt - 1000;
    String hours = (_timeInt ~/ 1000 ~/ 60 ~/ 60 % 24).toString(); // 获取小时
    String minutes = (_timeInt ~/ 1000 ~/ 60 % 60).toString(); //获取分钟数
    String seconds = (_timeInt ~/ 1000 % 60).toString(); //获取秒数
    int.parse(hours) < 10 ? hours = "0" + hours.toString() : hours;
    int.parse(minutes) < 10 ? minutes = "0" + minutes : minutes;
    int.parse(seconds) < 10 ? seconds = "0" + seconds : seconds;
    _time = [hours,minutes,seconds];
    setState(() {

    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

}