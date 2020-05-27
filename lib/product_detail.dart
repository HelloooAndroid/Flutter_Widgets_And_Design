import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data_models/ProductModel.dart';

class ProductDetail extends StatelessWidget {
  ProductModel productDetail;

  ProductDetail(this.productDetail);

  @override
  Widget build(BuildContext context) {
    getData();

    return Scaffold(
        resizeToAvoidBottomPadding: false, //for overriding pixel bt keypad
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(productDetail.text),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 65),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(productDetail.text,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ),
                    Center(
                      child: Text(
                        productDetail.sub_text,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Center(
                        child: Text(
                            "₹ " + productDetail.price.toStringAsFixed(2),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Image.network(
                        productDetail.imagePath,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text("Description",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ),
                    Text(
                        "Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum Is Simply Dummy Text Of The Printing. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.normal,
                            fontSize: 15)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white30, Colors.white]),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.green, Colors.lightGreen])),
                height: 45.0,
                margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                child: Material(
                  shadowColor: Colors.green,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: AlignmentDirectional.centerStart,
                        end: AlignmentDirectional.centerEnd,
                        colors: [
                          Colors.green,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.white30,
                        onTap: () {
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }


  getData() {
    /*productDetail = new ProductModel(
        "Drone",
        "High Quality video cam",
        450,
        4.5,
        false,
        "https://d29u17ylf1ylz9.cloudfront.net/neha/assets/img/product/electronic/1.jpg");*/
  }
}
