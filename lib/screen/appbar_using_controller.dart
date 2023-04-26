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
        bottom: TabBar(
          controller: tabController,
          tabs: TABS
              .map((e) => Tab(
                    icon: Icon(
                      e.icon,
                    ),
                    child: Text(e.label),
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: TABS
            .map((e) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      e.icon,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '이전',
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '다음',
                          ),
                        ),
                      ],
                    )
                  ],
                ))
            .toList(),
      ),
    );
  }
}
