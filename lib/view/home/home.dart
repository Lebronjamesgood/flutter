/*
 * @Files: 
 * @Version: 1.0
 * @Author: zjw
 * @Date: 2021-01-08 10:58:43
 * @LastEditors: 张三
 * @LastEditTime: 2021-01-11 17:36:14
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      //主题
      theme: new ThemeData(
        primaryColor: Colors.white
      ),
      home: new RandomWords(),
    );
  }
}

//
class RandomWords extends StatefulWidget {

  //继承自有状态的StatefulWidget类,需要重写createSate方法
  // => 单行函数或者方法的简写
  @override
  createState() => new RandomWidget();
}

//无限滚动list
class RandomWidget extends State<RandomWords> {

  //单词对list数组,用来存储滚动列表项
  //加_表示私有变量 RandomWidget类里可以访问
  final _list = <WordPair>[];
  //文本样式
  final _bigFont = const TextStyle(fontSize: 18.0);
  //点赞的数据,Set表示不可重复 当然数组也可以
  //用来存储点赞之后跳转页面需要显示的列表
  final _saved = new Set<WordPair>();

  //每个继承类里都有build 方法
  @override
  Widget build(BuildContext context) {
    //主页面
    return new Scaffold(
      //导航栏
      appBar: new AppBar(
        //导航栏标题
        title: new Text('Startup Name Generator'),
        //右侧按钮
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      //主页面内容区域
      body: _buildList(),
    );
  }

  //点击页面跳转
  void _pushSaved() {
    //路由导航
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      //tiles表示新页面内容
      final tiles = _saved.map(
        (element) {
          //每一行
          return new ListTile(
            title: new Text(
              element.asPascalCase,
              style: _bigFont,
            ),
          );
        },
      );
      //内容
      final devided =
          ListTile.divideTiles(tiles: tiles, context: context).toList();
      return Scaffold(
        appBar: new AppBar(
          title: new Text("zjw"),
        ),
        body: new ListView(
          children: devided,
        ),
      );
    }));
  }

 
  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        //奇数行分割线
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        //每次增加110行
        if (index >= _list.length) {
          _list.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_list[index]);
      },
    );
  }
  
  //_buildRow  一切皆为widget 这里表示单行显示的视图
  Widget _buildRow(WordPair pair) {
    final _allSaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _bigFont,
      ),
      trailing: new Icon(
        _allSaved ? Icons.favorite : Icons.favorite_border,
        color: _allSaved ? Colors.red : null,
      ),
      //按压事件
      onTap: () {
        //数据驱动状态组件重新渲染
        setState(() {
          if (_allSaved) _saved.remove(pair);
          if (!_allSaved) _saved.add(pair);
        });
      },
    );
  }
}
