import 'package:flutter/material.dart';
import 'package:flutter_app/util/color.dart';

Widget CreateAppBar(String title){
  _inputChange(){}
  return new AppBar(
      title: Text(title),
      centerTitle: false,
      backgroundColor: Colors.white,
      textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
      actions: <Widget>[
        Container(
          alignment: Alignment.center, //child子Widget距中展示
          width: 120.0, //设置宽度为200.0
          height: 20.0,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: '请输入查询的内容',
              suffixIcon:
              Icon(Icons.close, color: HexColor("#c0c0c0"), size: 22),
              prefixIcon:
              Icon(Icons.search, color: HexColor("#c0c0c0"), size: 22),
              filled: true,
              fillColor: HexColor("#f6f7f9"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: _inputChange(),
          ),
        ),
        IconButton(
            icon: Icon(Icons.headset_mic, color: Colors.grey, size: 24),
            onPressed: () {
              print('search....');
            }),
        IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.grey, size: 24),
            onPressed: () {
              print('search....');
            }),
        IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.grey, size: 24),
            onPressed: () {
              print('history....');
            }),
      ]);
}
