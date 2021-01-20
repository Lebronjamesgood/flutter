import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/banner_list.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_app/util/color.dart';
import 'package:flutter_app/view/strict_select/components/notice_swipe.dart';
import 'package:flutter_svg/flutter_svg.dart';

const List<String> SvgPicture_list = [
  'assets/images/view/svg/vegetableBasket.svg',
  'assets/images/view/svg/supermarket.svg',
  'assets/images/view/svg/scenic.svg',
  'assets/images/view/svg/restaurant.svg',
];
class SwipeBanner extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_SwipeBanner();
}
class _SwipeBanner extends State<SwipeBanner>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<BannerList> swiperList = StrictSelectList;
    return new Container(
        height: 280,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 0,
              height: 160,
              width: (MediaQuery.of(context).size.width),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.asset(
                    swiperList[index].path,
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
                pagination: null,
                control: null,
                autoplay: true,
              ),
            ),
            Positioned.fill(
                top: 120,
                child: Align(
                    child: Container(
                      height: 140,
                      width: (MediaQuery.of(context).size.width) - 20,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: HexColor('#1a2149'),
                                offset: Offset(0.0, 2.0), //阴影xy轴偏移量
                                blurRadius: 15.0, //阴影模糊程度
                                spreadRadius: 0)
                          ]),
                      child: ListView(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:
                              SvgPicture_list.asMap().keys.map((index) =>
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        SvgPicture_list[index],
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text(
                                        '菜篮子',
                                        style: TextStyle(),
                                      )
                                    ],
                                  ),).toList()
                              ),
                          Row(
                            children: [
                              Container(
                                padding:EdgeInsets.fromLTRB(14, 14, 2, 20),
                                child: Text('今日',
                                    style: TextStyle(
                                      color: HexColor('#206cfe'),
                                      fontSize: 16,
                                      decorationStyle: TextDecorationStyle.dashed,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(0, 14, 10, 20),
                                child: Text('公告',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Container(
                                height: 20,
                                width: (MediaQuery.of(context).size.width) - 150,
                                child:NoticeSwipe(),
                              )
                            ],
                          )
                        ],
                      ),
                    )))
          ],
        ));
  }
}