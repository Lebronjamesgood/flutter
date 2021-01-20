/*
 * @Files: 
 * @Version: 1.0
 * @Author: zjw
 * @Date: 2021-01-11 15:16:00
 * @LastEditors: zhengjiangwei
 * @LastEditTime: 2021-01-12 16:03:10
 */

class TabBarModel {
  final String iconPath;
  final String activeIconPath;
  final String title;

  const TabBarModel({this.iconPath, this.activeIconPath, this.title});
}

const List<TabBarModel> TabBarModelList = [
  TabBarModel(iconPath: "assets/images/tab_bar/png/home.png", activeIconPath: "assets/images/tab_bar/png/home_select.png", title: '首页'),
  TabBarModel(iconPath: "assets/images/tab_bar/png/cloud_serve.png", activeIconPath: "assets/images/tab_bar/png/cloudServe_select.png", title: '云上生活'),
  TabBarModel(iconPath: "assets/images/tab_bar/png/life.png", activeIconPath: "assets/images/tab_bar/png/life_select.png", title: '智享生活'),
  TabBarModel(iconPath: "assets/images/tab_bar/png/strict.png", activeIconPath: "assets/images/tab_bar/png/strict_select.png", title: '享购严选'),
  TabBarModel(iconPath: "assets/images/tab_bar/png/mine.png", activeIconPath: "assets/images/tab_bar/png/mine_select.png" , title: '我的'),
];
