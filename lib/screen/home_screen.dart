import 'package:flutter/material.dart';
import 'package:tabbar_example/screen/appbar_using_controller.dart';
import 'package:tabbar_example/screen/basic_appbar_tabbar_screen.dart';
import 'package:tabbar_example/screen/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BasicAppbarTabbarScreen(),
                  ),
                );
              },
              child: Text('Basic Appbar TabBar Scereen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AppBarUsingController(),
                  ),
                );
              },
              child: Text('Appbar Using Controller'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BottomNavigationBarScreen(),
                  ),
                );
              },
              child: Text('Bottom navigation bar Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
