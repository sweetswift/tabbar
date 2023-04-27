import 'package:flutter/material.dart';
import 'package:tabbar_example/const/tabs.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen>
    with TickerProviderStateMixin {
  late final TabController controller;

  void initState() {
    super.initState();
    controller = TabController(length: TABS.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: TabBarView(
        controller: controller,
        children: TABS
            .map((e) => Center(
                  child: Icon(
                    e.icon,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
