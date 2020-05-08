import 'package:flutter/material.dart';
import './brand.dart';


class Product  with ChangeNotifier{
  final id;
  final title;
  final price;
  final description;
  final imageUrl;
  final List<String> features;
  final List<Color> colors;
  final Brand brand ;  
   bool isFavorite;
   bool isNew;
   double discount;

  Product({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.imageUrl,
    @required this.features,
    @required this.colors,
   @required this.brand,
    this.discount = 0,
    this.isFavorite=false,
    this.isNew = false
  });
  void favoriteToggle(){
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
