import 'package:flutter/material.dart';
import 'package:flutterdesign/widgets/ProductWidget.dart';

import 'data_models/ProductModel.dart';

class ProductList extends StatelessWidget {
  final String title;
  final List<ProductModel> productModel = new List<ProductModel>();

  ProductList(this.title);

  @override
  Widget build(BuildContext context) {
    getData();

    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height) / 2.5;
    final double itemWidth = size.width / 2;

    return Scaffold(
        resizeToAvoidBottomPadding: false, //for overriding pixel bt keypad
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(title),
        ),
        body: new GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          children: List.generate(productModel.length, (index) {
            return ProductWidget(productModel: productModel[index]);
          }),
        ));
  }

  getData() {
    if (title == "Whats New") {
      productModel.clear();
      productModel.add(new ProductModel(
          "DJI Phantom 4 Drone",
          "Smartest flying camera",
          450,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/slider/1.png"));
      /*https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/shop/shop-grid-1/15.jpg*/
      /*https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/1.jpg*/

      productModel.add(new ProductModel(
          "Sony Headset",
          "Best noice reduction",
          450.00,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/4.jpg"));
      productModel.add(new ProductModel(
          "Watch",
          "Designer Watch",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/3.jpg"));
      productModel.add(new ProductModel(
          "Web Eye",
          "2nd Gen Web Cam",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/2.jpg"));
      productModel.add(new ProductModel(
          "Sim Lamp",
          "Designer lamp",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/7.jpg"));
      productModel.add(new ProductModel(
          "Handbag",
          "Multipurpose handbag",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/8.jpg"));
      productModel.add(new ProductModel(
          "JBL Portable speaker",
          "Portable speaker",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/shop/shop-grid-2/5.jpg"));
      productModel.add(new ProductModel(
          "Digi Wrist watch",
          "Personal health management",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/shop/shop-grid-2/9.jpg"));
      productModel.add(new ProductModel(
          "Coffee maker",
          "Coffee maker",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/shop/shop-grid-1/12.jpg"));
      productModel.add(new ProductModel(
          "Unique table watch",
          "Multipurpose uniwue table watch",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/shop/shop-grid-1/6.jpg"));
      productModel.add(new ProductModel(
          "Table Fan",
          "Best deal in summer",
          450.2,
          4.5,
          false,
          "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/shop/shop-grid-1/10.jpg"));
    }
  }
}
