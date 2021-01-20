/*
 * @Files: 享购严选首页
 * @Version: 1.0
 * @Author: zhengjiangwei
 * @Date: 2021-01-12 15:14:31
 * @LastEditors: zhengjiangwei
 * @LastEditTime: 2021-01-13 11:06:11
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/TabbarModel.dart';
import 'package:flutter_app/view/strict_select/components/swipe.dart';
import 'package:flutter_app/view/strict_select/components/app_bar.dart';


const TAB_BAR_LIST = TabBarModelList;

class CloudLife extends StatefulWidget {
  @override
  createState() => _CloudLife();
}

class _CloudLife extends State<CloudLife> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CreateAppBar('云上生活'),
      body: ListView(
        children: [
          SwipeBanner(),
        ],
      ),
    );
  }
}
