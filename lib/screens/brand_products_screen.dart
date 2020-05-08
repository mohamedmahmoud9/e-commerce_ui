import 'package:beats_shop/providers/products.dart';
import 'package:beats_shop/widgets/app_drawer.dart';
import 'package:beats_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class BrandProductsScreen extends StatelessWidget {
  static final routeName = 'products-filtered-by-brand';
  
  @override
  Widget build(BuildContext context) {
      final brand = ModalRoute.of(context).settings.arguments;
      final productsByBrand = Provider.of<Products>(context).productsByBrand(brand);
    return Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
        // centerTitle: true,
        title:Text('${brand.toString().split('.')[1]} Products')
        ),
        drawer: AppDrawer(),
      body: GridView.builder(
             
              padding: EdgeInsets.all(8),
              itemCount:productsByBrand.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                childAspectRatio: 2/3,
                  crossAxisSpacing: 10,
              ),
              itemBuilder: 
              (ctx,i)=> ChangeNotifierProvider.value(
                value: productsByBrand[i],
                child: ProductItem())),
          
          
          
    );
  }
}