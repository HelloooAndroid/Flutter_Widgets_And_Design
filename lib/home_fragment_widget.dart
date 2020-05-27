import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdesign/data_models/ProductModel.dart';
import 'package:flutterdesign/widgets/CategoryWidget.dart';
import 'package:flutterdesign/widgets/HomeProductWidget.dart';
import 'data_models/AlbumModel.dart';
import 'data_models/CategoriesModel.dart';

import 'package:http/http.dart' as http;

class HomeFragmentWidget extends StatelessWidget {
  final List<CategoriesModel> categoriesEntries = new List<CategoriesModel>();
  final List<ProductModel> featuredProductModel = new List<ProductModel>();
  final List<ProductModel> bestSellingProductModel = new List<ProductModel>();
  final List<ProductModel> trendingProductModel = new List<ProductModel>();

  HomeFragmentWidget();

  @override
  Widget build(BuildContext context) {
    getData();

    return Container(
      color: Colors.grey[100],
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Categories"),
          padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
        ),
        Container(
          height: 120.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: categoriesEntries.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryWidget(categoryModel: categoriesEntries[index]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        Container(
          child: Image.network(
              "https://berryseek.com/wp-content/uploads/2020/01/10-56-3835.jpg"),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Featured"),
          padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
        ),
        Container(
          height: 160.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: featuredProductModel.length,
            itemBuilder: (BuildContext context, int index) {
              return HomeProductWidget(productModel: featuredProductModel[index]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        Container(
          child: Image.network(
              "https://ysms.akamaized.net/Assets/res/imgs/creative/20wk10/l_kr_w_fashion_en.jpg"),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Best Selling"),
          padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
        ),
        Container(
          height: 160.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: bestSellingProductModel.length,
            itemBuilder: (BuildContext context, int index) {
              return HomeProductWidget(productModel: bestSellingProductModel[index]);

            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        Container(
          child: Image.network(
              "https://i.pinimg.com/originals/19/79/68/1979683b1c4ba449f98496ae3a46dfd0.jpg"),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Trending"),
          padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
        ),
        Container(
          height: 160.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: trendingProductModel.length,
            itemBuilder: (BuildContext context, int index) {
              return HomeProductWidget(productModel: trendingProductModel[index]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        Container(
          child: Image.network(
              "https://www.psdcenter.com/wp-content/uploads/2018/09/Top-50-Trending-Products-2019.jpg"),
        ),
      ])),
    );
  }





  void getData() {
    categoriesEntries.clear();
    categoriesEntries.add(new CategoriesModel("Whats New",
        "https://ae01.alicdn.com/kf/HTB1Shb_MVXXXXb2XXXXq6xXFXXXg/men-jacket-men-s-coat-fashion-clothes-hot-sale-autumn-overcoat-outwear-Free-shipping-wholesale-retail.jpg_640x640.jpg"));
    categoriesEntries.add(new CategoriesModel("Men",
        "https://img5.cfcdn.club/38/0f/38a3bbd0fe518f8696d905828604560f_350x350.jpg"));
    categoriesEntries.add(new CategoriesModel("Women",
        "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_700/https://40plusstyle.com/wp-content/uploads/2018/12/Dont-expose-too-much-flesh.jpg"));
    categoriesEntries.add(new CategoriesModel("Gear",
        "https://www.familyhandyman.com/wp-content/uploads/2018/01/shutterstock_394860670.jpg"));
    categoriesEntries.add(new CategoriesModel("Training",
        "https://www.alphafit.com.au/assets/full/871.jpg?20181119131654"));
    categoriesEntries.add(new CategoriesModel("Books",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQdpVBvypO6t4d4jH3_7YyMoTl3YTNo6NJ9bGdXfEgUl4iBLgWk&usqp=CAU"));
    categoriesEntries.add(new CategoriesModel("Electronics",
        "https://www.online-tech-tips.com/wp-content/uploads/2019/12/electronic-gadgets.jpeg"));
    categoriesEntries.add(new CategoriesModel("View All",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTK4qM8WnNreWtqNkX_p5-U48HyS0KfIxUazUqLoJJtlMB-S9yx&usqp=CAU"));

    featuredProductModel.clear();
    featuredProductModel.add(new ProductModel.home("Women T-Shirt", 450.00,
        "https://images.bewakoof.com/t540/dark-forest-green-boyfriend-t-shirt-women-s-plain-boyfriend-t-shirts-237340-1585382936.jpg"));
    featuredProductModel.add(new ProductModel.home("Mens T-Shirt", 650.00,
        "https://designhooks.com/wp-content/uploads/2018/04/round-neck-men-tshirt-mockup.jpg"));
    featuredProductModel.add(new ProductModel.home("Adidas shoes", 1420.00,
        "https://i.pinimg.com/originals/00/81/16/00811672320f96eb5968f1f6c946fd59.jpg"));
    featuredProductModel.add(new ProductModel.home("Jeans", 2100.00,
        "https://images-na.ssl-images-amazon.com/images/I/71Y6amZNk3L._UL1500_.jpg"));

    bestSellingProductModel.clear();
    bestSellingProductModel.add(new ProductModel.home("iPhone", 450.00,
        "https://specials-images.forbesimg.com/imageserve/5ea1add3dea8300007de9bb1/960x0.jpg?fit=scale"));
    bestSellingProductModel.add(new ProductModel.home("RJ Watch", 650.00,
        "https://www.dayandnightmagazine.com/wp-content/uploads/2019/12/RJ_ARRAW_Spider-Man_01.jpg"));
    bestSellingProductModel.add(new ProductModel.home("LLOYD AC", 1420.00,
        "https://www.bajajfinservmarkets.in/discover/wp-content/uploads/2019/08/AC-3.png"));
    bestSellingProductModel.add(new ProductModel.home("ASUS ROG", 2100.00,
        "https://5.imimg.com/data5/MA/XT/ZX/SELLER-9321582/asus-gaming-laptop-rog-strix-scar-ii-gl504gw-es007t-500x500.jpg"));

    trendingProductModel.clear();
    trendingProductModel.add(new ProductModel.home("Solar power bank", 1420.00,
        "https://i.etsystatic.com/23295402/d/il/757bd6/2360604535/il_340x270.2360604535_82l1.jpg?version=0"));
    trendingProductModel.add(new ProductModel.home("wireless portable sound", 450.00,
        "https://image.made-in-china.com/2f0j00EDafKBJdCWkz/Lxy-E16-New-Trending-Products-Handsfree-Stereo-Sound-Portable-Wireless-Speaker-Audio-System-Bluetooth-Speaker-Portable-Mini-Speaker.jpg"));
    trendingProductModel.add(new ProductModel.home("Military DigiWatch", 2100.00,
        "https://cdn.shopify.com/s/files/1/0020/2116/3107/products/2018-New-Coming-Alike-Trending-Products-Dropshipping-Men-s-Watch-Military-Digital-Date-Display-Sports-Watches_620x.jpg?v=1552574708"));
    trendingProductModel.add(new ProductModel.home("Beardo oil", 2100.00,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8KAuJpkxs0QG1v3KieGFscqQoLOql7Lzzog3rMuEUhYJin2y6A&s"));
    trendingProductModel.add(new ProductModel.home("Z Track set", 2100.00,
        "https://www.giftsndays.com/wp-content/uploads/2018/11/Riinr-2017-Fashion-New-Arrival-Men-s-Sportwear-Sets-Spring-And-Autumn-Casual-Hoodies-Two-Piece.jpg"));
  }

  void _showToast(BuildContext context, String msg) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Clicked'),
        action: SnackBarAction(
            label: msg, onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
