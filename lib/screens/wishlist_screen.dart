import 'package:beats_shop/providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';
class WishlistScreen extends StatelessWidget {
    static final routeName= 'wishlist-screen';

  @override
  Widget build(BuildContext context) {
    final products  = Provider.of<Products>(context).wishlist;
    return Scaffold(
      body: CustomScrollView(
        
        slivers: <Widget>[
          SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (ctx, i) => ChangeNotifierProvider.value(
                      value: products[i],
                      child: ProductItem(),
                    ),
                    childCount: products.length,
                  ),
                ),
        ],
              
      ),
    );
  }
}