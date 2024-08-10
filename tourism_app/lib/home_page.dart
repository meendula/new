import 'package:flutter/material.dart';
import 'HomeTab.dart';
import 'ListTab.dart';
import 'MapTab.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('tourism'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.list), text: 'List of locations'),
              Tab(icon: Icon(Icons.map), text: 'Map'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            ListTab(),
            MapTab(),
          ],
        ),
      ),
    );
  }
}
