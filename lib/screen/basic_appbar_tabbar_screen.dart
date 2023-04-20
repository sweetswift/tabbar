import 'package:flutter/material.dart';
import 'package:tabbar_example/const/tabs.dart';

class BasicAppbarTabbarScreen extends StatelessWidget {
  const BasicAppbarTabbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TABS.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('BasicAppBarScreen'),
          bottom: TabBar(
            tabs: TABS
                .map(
                  (e) => Tab(
                    icon: Icon(
                      e.icon,
                    ),
                    child: Text(
                      e.label,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
