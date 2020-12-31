import 'package:base_app/src/components/ListItem.dart';
import 'package:flutter/material.dart';
// import 'package:huawei_ads/hms_ads_lib.dart';
final List<String> entries = <String>["veiyil","வீரகேசரி","தினகரன்"];
final List<String> urls = <String>['https://veiyil.com','https://www.virakesari.lk','http://www.thinakaran.lk'];

class SecondTab extends StatefulWidget {
    @override
  _SecondTabState createState() => _SecondTabState();
}
class _SecondTabState extends State<SecondTab> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.separated(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return 
    ListItem(entries: entries, index: index, urls: urls);
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(height: 10),
)
    );
  }
}