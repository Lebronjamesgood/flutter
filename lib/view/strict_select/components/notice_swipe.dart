import 'dart:async';
import 'package:flutter/cupertino.dart';



class NoticeSwipe extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _NoticeSwipe();
}
class _NoticeSwipe extends State<NoticeSwipe>{
  PageController _pageController;
  int currentIndex = 1;
  final  List<String> _noticeList = [
    '1政务中心由于装修，暂停业务一周，请合理安排好时间121111122',
    '2政务中心由于装修，暂停业务一周，请合理安排好时间2222222',
    '3政务中心由于装修，暂停业务一周，请合理安排好时间333333333333',
    '4政务中心由于装修，暂停业务一周，请合理安排好时间444444444444'
  ];
  Timer timer;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: currentIndex);
    ///当前页面绘制完第一帧后回调
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      autoPlay();
    });
  }
  void autoPlay() {
    timer = Timer.periodic(Duration(seconds: 2), (value){
      currentIndex = currentIndex == 3 ? 0 : currentIndex+1;
      _pageController.animateToPage(currentIndex,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      setState(() {

      });
    });
  }
  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return new PageView.builder(
        scrollDirection: Axis.vertical,
        controller:  _pageController,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder:(BuildContext context, int index) {
          return Container(
            child: Text(_noticeList[index]),
          );
        },
    );
  }
}