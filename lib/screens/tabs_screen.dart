import 'package:beats_shop/screens/discover_screen.dart';
import 'package:beats_shop/screens/products_overview_screen.dart';
import 'package:beats_shop/screens/profile_screen.dart';
import 'package:beats_shop/screens/wishlist_screen.dart';
import 'package:beats_shop/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  @override
  void initState() {
    _pages = [
      {
        'page': ProductsOverviewScreen(),
      },
      {
        'page': DiscoverScreen(),
      },
      {
        'page': WishlistScreen(),
      },
      {
        'page': ProfileScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedPageIndex==0? null : AppBar(
      
         iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          width: 50,
          height: 50,
        ),
        // leading: Icon(
        //   Icons.dehaze,
        //   color: Colors.black,
        // ),
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
      drawer: AppDrawer(),
      body: 
      
      _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: _selectPage,
          selectedIconTheme: IconThemeData(
            size: 30,
          ),
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              title: Text('Discover'),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite_border),
              title: Text('Wishlist'),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
            )
          ]),
    );
  }
}
