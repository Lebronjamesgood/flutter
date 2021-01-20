class BannerList{
  final String path;
  final int id;
  final String title;
  const BannerList({this.path,this.id,this.title});
}

const List<BannerList> StrictSelectList = [
  BannerList(path: "assets/images/tab_bar/png/moun1.png", id: 0, title: '首页'),
  BannerList(path: "/images/tab_bar/png/moun2.png", id: 1, title: '首页'),
  BannerList(path: "assets/images/tab_bar/png/moun3.png", id: 2, title: '首页'),
];

const List<BannerList> HomeBannerList = [
  BannerList(path: "assets/images/tab_bar/png/home.png", id: 0, title: '首页'),
  BannerList(path: "assets/images/tab_bar/png/home.png", id: 1, title: '首页'),
  BannerList(path: "assets/images/tab_bar/png/home.png", id: 2, title: '首页'),
];


class GoodList{
  final String title;
  final String imageUrl;
  final String price;
  final String oldPrice;
  const GoodList({this.title,this.imageUrl,this.price,this.oldPrice});
}


const List<GoodList> goodList = [
  GoodList(title:'中国大陆.主推韩版男装积雨Giyu三件套男生衣服帅气穿搭，春秋冬撞色外套',imageUrl:"assets/images/tab_bar/png/clouth.png",price:'298.90',oldPrice:'399.90'),
  GoodList(title:'日本.如珍珠般一口美牙LION狮王 CLINICA酵素美白牙膏130g鲜果薄荷',imageUrl:"assets/images/tab_bar/png/toothpaste.png",price:'29.90',oldPrice:'55.90'),
  GoodList(title:'中国防尘防晒网红同款口罩',imageUrl:"assets/images/tab_bar/png/Mask.png",price:'12.9',oldPrice:'15.9'),
  GoodList(title:'麦板石不粘锅',imageUrl:"assets/images/tab_bar/png/pot.png",price:'159.90',oldPrice:'219.90'),
  GoodList(title:'高帮鞋运动鞋',imageUrl:"assets/images/tab_bar/png/shoes.png",price:'159.90',oldPrice:'245.90'),

];




