import 'package:beats_shop/providers/products.dart';
import 'package:beats_shop/widgets/brand_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrandsScreen extends StatelessWidget {
  static final routeName = 'brands-screen';
  @override
  Widget build(BuildContext context) {
    final brands = Provider.of<Products>(context).brandsItems;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Brand',
        ),
      ),
      body: GridView.builder(
              // scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: brands.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                childAspectRatio: 4/3,
                 crossAxisSpacing: 10,
              ),
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: brands[i],
                child: BrandItem()),
            ),
      
    );
  }
}
