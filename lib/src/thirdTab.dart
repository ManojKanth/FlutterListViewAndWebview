import 'package:base_app/src/components/ListItem.dart';
import 'package:flutter/material.dart';
// import 'package:huawei_ads/hms_ads_lib.dart';
final List<String> entries = <String>["NewsWire", "Sunday Observer","Daily Mirror "];
final List<String> urls = <String>['http://www.newswire.lk','https://sundayobserver.lk','http://www.dailymirror.lk'];

class ThirdTab extends StatefulWidget {
      @override
  _ThirdTabState createState() => _ThirdTabState();
}
class _ThirdTabState extends State<ThirdTab> {

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