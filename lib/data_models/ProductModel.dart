import 'dart:ffi';

class ProductModel {
  String text;
  String sub_text;
  String imagePath;
  double price;
  double rating;
  bool liked;


  ProductModel(this.text, this.sub_text,
      this.price, this.rating, this.liked,this.imagePath,);

  ProductModel.home(this.text, this.price,this.imagePath){
  }
}
