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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabBar(
                  indicatorColor: Colors.red,
                  indicatorWeight: 4.0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  labelColor: Colors.yellow,
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w100,
                  ),
                  tabs: TABS
                      .map(
                        (e) =>
                        Tab(
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
              ],
            ),
          )
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(), //양옆 스크롤 막기
          children: TABS.map((e) =>Center(
            child: Icon(
              e.icon,
            ),
          )).toList(),
        ),
      ),
    );
  }
}
