import 'package:beats_shop/screens/brand_products_screen.dart';
import 'package:beats_shop/screens/brands_screen.dart';
import 'package:beats_shop/screens/discover_screen.dart';
import 'package:beats_shop/screens/product_detail_screen.dart';
import 'package:beats_shop/screens/profile_screen.dart';
import 'package:beats_shop/screens/tabs_screen.dart';
import 'package:beats_shop/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        ChangeNotifierProvider.value(value: Products()
    
      ,child: MaterialApp(
        title: 'Beats Shop',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          // textTheme: TextTheme(title: TextStyle(color: Colors.black)),
          primaryColor: Colors.black,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: TextTheme(
              title: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: TabsScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          BrandsScreen.routeName: (ctx) => BrandsScreen(),
          BrandProductsScreen.routeName:(ctx)=>BrandProductsScreen(),
          DiscoverScreen.routeName:(ctx)=>DiscoverScreen(),
          WishlistScreen.routeName:(ctx)=>WishlistScreen(),
          ProfileScreen.routeName:(ctx)=>ProfileScreen(),
        },
      ),
    );
  }
}
