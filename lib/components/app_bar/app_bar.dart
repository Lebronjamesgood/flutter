/*
 * @Files:
 * @Version: 1.0
 * @Author: zhengjiangwei
 * @Date: 2021-01-12 15:41:29
 * @LastEditors: zhengjiangwei
 * @LastEditTime: 2021-01-12 16:51:34
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppBar();
}

class _MyAppBar extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      new AppBar(
          title: Text('享购严选'),
          centerTitle: false,
          actions: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(hintText: '请输入查询的内容'),
              onChanged: _inputChange(),
            ),
            IconButton(
              icon:Image.asset('assets/images/tab_bar/svg/customer-service.svg'),
            ),
            IconButton(
              icon:Image.asset('assets/images/tab_bar/svg/goods-car.svg'),
            ),
            IconButton(
              icon:Image.asset('assets/images/tab_bar/svg/nav-more.svg'),
            ),
          ]),
    );
  }

  _inputChange() {
    return null;
  }
}
