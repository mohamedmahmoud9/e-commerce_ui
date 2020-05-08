
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              //  centerTitle: true,

              child: Container(
                  // color: Colors.amber[400],
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/images/logo.png',
                  )),
              // automaticallyImplyLeading: false,
            ),
            Divider(),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              title: const Text(
                'Account',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
               
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              title: const Text(
                'Wallet',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.brightness_3,
                color: Colors.white,
              ),
              title: const Text(
                'Night Mode',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.amber,
              ),
              title: const Text(
                'Log out',
                style: TextStyle(color: Colors.amber),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
