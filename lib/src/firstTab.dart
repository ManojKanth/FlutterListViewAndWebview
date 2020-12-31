import 'package:base_app/src/components/ListItem.dart';
import 'package:flutter/material.dart';
// import 'package:huawei_ads/hms_ads_lib.dart';
final List<String> entries = <String>["දිනමිණ", "දිවයිණ","ලංකාදීප "];
final List<String> urls = <String>['http://www.dinamina.lk','https://www.divaina.com','http://www.lankadeepa.lk'];


class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {

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