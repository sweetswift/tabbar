import 'package:flutter/material.dart';
import 'package:tabbar_example/const/tabs.dart';

class AppBarUsingController extends StatelessWidget {
  const AppBarUsingController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Using Controller'),
      ),
      body: TabBarView(
        children: TABS
            .map(
              (e) => Center(
                child: Icon(
                  e.icon,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
