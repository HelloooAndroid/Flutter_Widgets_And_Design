import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdesign/data_models/ProductModel.dart';

class HomeProductWidget extends StatelessWidget {
  HomeProductWidget({this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130.0,
        margin: const EdgeInsets.all(4),
        child: Material(
          borderRadius: BorderRadius.circular(2),
          shadowColor: Colors.grey,
          color: Colors.white,
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              Container(
                  //padding: EdgeInsets.all(2),
                  child: Expanded(
                child: Image.network(
                  productModel.imagePath,
                  fit: BoxFit.cover,
                  width: 130,
                ),
              )),
              Container(
                  padding: EdgeInsets.all(4),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    productModel.text,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
            ],
          ),
        ));
  }
}
