import 'package:flutter/material.dart';
import 'package:tabbar_example/const/tabs.dart';

class AppBarUsingController extends StatefulWidget {
  const AppBarUsingController({Key? key}) : super(key: key);

  @override
  State<AppBarUsingController> createState() => _AppBarUsingControllerState();
}

class _AppBarUsingControllerState extends State<AppBarUsingController>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: TABS.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Using Controller'),
      ),
      body: TabBarView(
        controller: tabController,
        children: TABS.map((e) => Center(
          child: Icon(
            e.icon
          ),
        )).toList(),
      ),
    );
  }
}
