import 'package:beats_shop/screens/product_detail_screen.dart';

import '../models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);
    return Column(
      mainAxisSize: MainAxisSize.max,
      
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments: product.id);
          },
                  child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                tag: product.id,
                              child: Image.network(
                  product.imageUrl,
                
                  height: 170,
                 
                ),
              )),
        ),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
            ),
                      width: double.infinity,
                      height: 100,
          
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  FittedBox(
                                    child: Text(
                      '${product.title}',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Headphone',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${product.price}\$',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              )),
      
      ],
    );
  }
}
