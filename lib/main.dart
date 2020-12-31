import 'package:base_app/src/firstTab.dart';
import 'package:base_app/src/secondTab.dart';
import 'package:base_app/src/thirdTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // initHwAds();
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Sinhala'),
                Tab(text: 'Tamil'),
                Tab(text: 'English'),
              ],
            ),
            title: Text('Every news in one place'),
            backgroundColor: Colors.red,
          ),
          body: TabBarView(
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          ),
        ),
      ),
    );
  }
}