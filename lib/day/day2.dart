import 'package:flutter/material.dart';

class TabItem {
  final String title;
  final IconData icon;

  const TabItem({this.title, this.icon});
}

const List<TabItem> tabs = [
  const TabItem(title: "CAR", icon: Icons.directions_car),
  const TabItem(title: "BICYCLE", icon: Icons.directions_bike),
  const TabItem(title: "BOAT", icon: Icons.directions_boat),
  const TabItem(title: 'BUS', icon: Icons.directions_bus),
  const TabItem(title: 'TRAIN', icon: Icons.directions_railway),
  const TabItem(title: 'WALK', icon: Icons.directions_walk),
];

class Day2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day2',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WeWidget(),
    );
  }
}

class WeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeWidgetState();
  }
}

class WeWidgetState extends State<WeWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("day2"),
          bottom: TabBar(
            tabs: tabs.map((TabItem tab) {
              return Tab(
                text: tab.title,
                icon: Icon(tab.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
            children: tabs.map((TabItem tab) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: TabItemView(tabItem: tab),
          );
        }).toList()),
      ),
    );
  }
}

class TabItemView extends StatelessWidget {
  final TabItem tabItem;

  const TabItemView({Key key, this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(tabItem.icon, size: 120.0, color: textStyle.color),
            Text(tabItem.title, style: textStyle)
          ],
        ),
      ),
    );
  }
}
