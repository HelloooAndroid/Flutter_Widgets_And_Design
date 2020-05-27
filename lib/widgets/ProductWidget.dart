import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterdesign/data_models/ProductModel.dart';

import '../product_detail.dart';

class ProductWidget extends StatefulWidget {
  final ProductModel productModel;

  ProductWidget({this.productModel});

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    String _like_state = "assets/heart_empty_24.png";
    void _handleTap() {
      setState(() {
        if (widget.productModel.liked == false) {
          widget.productModel.liked = true;
        } else {
          widget.productModel.liked = false;
        }
        print(_like_state);
      });
    }

   void _openProductDetail() {
     setState(() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProductDetail(widget.productModel)));
     });

   }


    var size = MediaQuery.of(context).size;
    final double imageHeight = size.width / 2.5 - 20;
    final double imageWidth = size.width / 2 - 20;
    return Material(
      borderRadius: BorderRadius.circular(2),
      shadowColor: Colors.grey,
      color: Colors.white,
      elevation: 4.0,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 35,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.green,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  RatingBar(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 12,
                    itemCount: 4,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  GestureDetector(
                      onTap: _handleTap,
                      child: ImageIcon(
                        AssetImage(
                            widget.productModel.liked ? "assets/heart_filler_24.png" : "assets/heart_empty_24.png",
                        ),
                        color: Colors.redAccent,
                        size: 20,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: _openProductDetail,
              child: Container(
                  child: Expanded(
                child: Image.network(
                  widget.productModel.imagePath,
                  fit: BoxFit.cover,
                  height: imageHeight,
                  width: imageWidth,
                ),
              )),
            ),
            GestureDetector(
              onTap: _openProductDetail,
              child: Container(
                  padding: EdgeInsets.fromLTRB(8, 8, 16, 16),
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Text(
                        widget.productModel.text,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.productModel.sub_text,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "₹ " + widget.productModel.price.toStringAsFixed(2),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
