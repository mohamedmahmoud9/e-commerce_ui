import 'package:beats_shop/models/product.dart';
import 'package:beats_shop/providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static final routeName = 'product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments;
    final product = Provider.of<Products>(context,).findById(productId);
    return Scaffold(
      appBar: AppBar(
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
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: product.id,
                        child: Image.network(
                          product.imageUrl,
                          height: 300,
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 8,
                    ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                                                      child: Text(
                              product.title,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                         ChangeNotifierProvider.value(
                              value: product,
                                                          child: Consumer<Product>(
                                builder: (ctx,product,ch)=> IconButton(
                                
                                icon: product.isFavorite?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border),
                                onPressed: () {
                                  product.favoriteToggle();
                                },
                                iconSize: 30,
                              )),
                            ),
                          
                        ],
                     
                    ),
                    Chip(label: Text(product.brand.toString().split('.')[1])),
                    Text(
                      product.description,
                      style: TextStyle(color: Colors.grey
                          // fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      child: GridView.builder(
                          itemCount: product.colors.length,
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,

                            //  crossAxisSpacing: 10,
                          ),
                          itemBuilder: (ctx, i) => Container(
                                decoration: BoxDecoration(
                                    color: product.colors[i],
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                              )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height:
                          double.parse(product.features.length.toString()) * 40,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: product.features.length,
                        itemBuilder: (ctx, i) => Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.done,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                                            child: Text(
                                  product.features[i],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Price:',
                        style: TextStyle(color: Colors.amber),
                      ),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  RaisedButton.icon(
                    onPressed: () {},
                    color: Colors.amber,
                    icon: Icon(Icons.add_shopping_cart),
                    label: Text('Add to Cart'),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
