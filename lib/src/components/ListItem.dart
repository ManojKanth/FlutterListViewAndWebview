import 'package:flutter/material.dart';

import '../webView.dart';

class ListItem extends StatelessWidget {
  onclickEvent(int index, BuildContext context) => {
  Navigator.push(context, MaterialPageRoute(builder: (_) =>  WebViewClass(url:urls[index], title: entries[index],)))
  };
  ListItem({@required this.index,@required
     this.entries,@required
     this.urls});

  final index;
  final List<String> entries;
  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      color: Colors.black,
      child: ListTile(
      title: Text('${entries[index]}',style: TextStyle(color: Colors.white,  fontSize: 20), textAlign: TextAlign.center),
      onTap: () {
        onclickEvent(index, context);
      }, // Handle your onTap here. 
    )
    );
  }
}