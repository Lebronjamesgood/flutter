/*
 * @Files: 
 * @Version: 1.0
 * @Author: zjw
 * @Date: 2021-01-08 10:58:43
 * @LastEditors: zhengjiangwei
 * @LastEditTime: 2021-01-12 15:12:09
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/view/tab_bar/tab_bar.dart';

void main() => {runApp(new MyApp())};


class MyApp extends StatefulWidget {
  createState() => _MyApp();
}

class _MyApp extends State<MyApp> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'zjw flutter demo',
      //主题
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      ),
      home: TabNavigator()
    );
  }
}

