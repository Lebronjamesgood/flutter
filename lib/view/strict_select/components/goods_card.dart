import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoodsCard extends StatelessWidget{
  final  goodsList;

  const GoodsCard({
    Key key,
    this.goodsList,
  }):super(key:key);

  @override
  Widget build(BuildContext context){
    return new Container(
      // height: 160,
      // width: 232,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 1.0), //阴影xy轴偏移量
                blurRadius: 2.0, //阴影模糊程度
                spreadRadius: 0
            )
      ]),
      child: Column(
        children: [
          Image.asset(
            goodsList.imageUrl,
            width:232,
            height: 140,
          ),
          Text(
            goodsList.title,
          ),
          Text(
            goodsList.price,
          ),
          Text(
            goodsList.oldPrice,
          )
        ],
      ),
    );
  }

}

