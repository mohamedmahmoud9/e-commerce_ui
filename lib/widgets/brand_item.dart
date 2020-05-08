import 'package:beats_shop/screens/brand_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/brand.dart';

class BrandItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final brand = Provider.of<BrandImage>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(BrandProductsScreen.routeName,arguments: brand.brand);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              child: Image.network(
                brand.imageUrl,
                width: 70,
                height: 70,
              ),
            ),
            Container(
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  brand.brand.toString().split('.')[1],
                ))
          ],
        ),
      ),
    );
  }
}
