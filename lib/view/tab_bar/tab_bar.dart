/*
 * @Files: 
 * @Version: 1.0
 * @Author: zjw
 * @Date: 2021-01-11 15:14:27
 * @LastEditors: zhengjiangwei
 * @LastEditTime: 2021-01-12 17:10:58
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/TabbarModel.dart';
import 'package:flutter_app/view/home/home.dart';
import 'package:flutter_app/view/strict_select/strict_select.dart';
import 'package:flutter_app/view/mine/mine.dart';
import 'package:flutter_app/view/enjoy_life/enjoy_life.dart';
import 'package:flutter_app/view/cloud_life/cloud_life.dart';

const TAB_BAR_LIST = TabBarModelList;
// 默认字体颜色
const Color DEFAULT_FONT_COLOR = Color.fromRGBO(0, 0, 0, 0.7);
// 选择字体颜色
const Color ACTIVE_FONT_COLOR = Color.fromRGBO(41, 143, 255, 1);

class TabNavigator extends StatefulWidget {
  @override
  createState() => new _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _pageController = PageController(initialPage: 1);
  // 当前页
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller:_pageController,
        onPageChanged: (index)=>_onPageChange(index),
        children: <Widget>[
          Home(),
          CloudLife(),
          EnjoyLife(),
          StrictSelect(),
          Mine(),
        ],
      ),
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => _onBottomNavigationBarTap(index),
      items: TAB_BAR_LIST
          .asMap()
          .keys
          .map((index) => BottomNavigationBarItem(
                icon: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(TAB_BAR_LIST[index].iconPath)),
                activeIcon: Container(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(TAB_BAR_LIST[index].activeIconPath),
                ),
                title: Text(
                  TAB_BAR_LIST[index].title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: _currentIndex == index
                        ? ACTIVE_FONT_COLOR
                        : DEFAULT_FONT_COLOR,
                  ),
                ),
              ))
          .toList(growable: false),
    );
  }

  void _onBottomNavigationBarTap(int index) {
    _onPageChange(index);
    _pageController.jumpToPage(index);
  }

  void _onPageChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
