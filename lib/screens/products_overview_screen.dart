import '../providers/products.dart';
import './brands_screen.dart';
import '../widgets/app_drawer.dart';
import '../widgets/product_item.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/brand_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final brands = Provider.of<Products>(context, listen: false).brandsItems;
    final products = Provider.of<Products>(context, listen: false).productItems;
    return Scaffold(
        
        drawer: AppDrawer(),
        body:
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.black),
                centerTitle: true,
                floating: true,

                title: Image.asset(
                  'assets/images/logo.png',
                  width: 50,
                  height: 50,
                ),

                // floating: true,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(70.0),
                  child: Container(
                    padding: EdgeInsets.only(bottom:8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                       
                          width: MediaQuery.of(context).size.width * .7,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                   
                                    blurRadius: 2)
                              ],
                              borderRadius: BorderRadius.circular(8)),

                       
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: TextField(
                              cursorColor: Colors.black87,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                // contentPadding: EdgeInsets.all(10),
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                        
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic_none,
                            color: Colors.black87,
                          ),
                        )
                        
                      ],
                    ),
                  ),
                ),

                actions: <Widget>[
                  IconButton(
                    color: Colors.black,
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              SliverToBoxAdapter(
               
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Choose brand',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(BrandsScreen.routeName);
                          },
                          child: Text(
                            'See All',
                          ),
                        )
                      ],
                    ),
                  ),
                
              ),
              SliverToBoxAdapter(
                
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 120.0,
                  child: GridView.builder(
                    itemCount: brands.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                        value: brands[i], child: BrandItem()),
                    scrollDirection: Axis.horizontal,
                  
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    padding: EdgeInsets.only(top:8,left:8,bottom: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Products',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    )),
              ),
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
              )
            ],
          ),
        );
  }
}
