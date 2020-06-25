import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {  //This widget is used to populate the Options widget for user
  final String leading;
  final String title;

  OptionItem(this.leading, this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(leading, style: TextStyle(color: Colors.grey),),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
