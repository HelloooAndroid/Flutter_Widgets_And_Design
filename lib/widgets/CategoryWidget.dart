import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdesign/data_models/CategoriesModel.dart';

import '../product_list.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({this.categoryModel});

  final CategoriesModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductList(categoryModel.text))
        );

      },
      child: Container(
          width: 100.0,
          margin: const EdgeInsets.all(4),
          child: Material(
            borderRadius: BorderRadius.circular(2),
            shadowColor: Colors.grey,
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    categoryModel.imagePath,
                    height: 70.0,
                    width: 70.0,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      categoryModel.text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
