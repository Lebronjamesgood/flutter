/*
 * @Files: 享购严选首页
 * @Version: 1.0
 * @Author: zhengjiangwei
 * @Date: 2021-01-12 15:14:31
 * @LastEditors: zhengjiangwei
 * @LastEditTime: 2021-01-13 11:06:11
 */
import 'package:flutter_app/model/banner_list.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/TabbarModel.dart';
import 'package:flutter_app/view/strict_select/components/swipe.dart';
import 'package:flutter_app/view/strict_select/components/app_bar.dart';
import 'package:flutter_app/view/strict_select/components/row_bar.dart';
import 'package:flutter_app/view/strict_select/components/goods_card.dart';


const TAB_BAR_LIST = TabBarModelList;
const GOODS_LIST = goodList;

class StrictSelect extends StatefulWidget {
  @override
  createState() => _StrictSelect();
}

class _StrictSelect extends State<StrictSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CreateAppBar('享购严选'),
      body: ListView(
        children: [
          SwipeBanner(),
          RowBar(
              showTime:true,
              widgetTitle:'今日好货'
          ),
          Container(
            height: 220,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return  GoodsCard(
                    goodsList:GOODS_LIST[index]
                );
              },
              itemWidth:232,
              itemHeight: 190,
              outer:true,
              itemCount: GOODS_LIST.length,
              pagination: SwiperPagination(
                  margin:EdgeInsets.all(0)
              ),
              control: null,
              autoplay: true,
            ),

          ),
        ],
      ),
    );
  }
}
