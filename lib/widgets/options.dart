import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './option_item.dart';

class Options extends StatelessWidget {   //This widget contains all profile options for the user
  final TextStyle style = TextStyle(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListView(      //for creating a scrollable column
          children: <Widget>[             //Option item widget reused because of different text
                                          // but same layout for all options
            OptionItem('Change Password', ''),
            Divider(),
            OptionItem('Mobile Number', '+91 7845xxxx25'),
            Divider(),
            OptionItem('Customer Care', ''),
            Divider(),
            OptionItem('Privacy', ''),
            Divider(),
            OptionItem('Feedback', ''),
            Divider(),
            ListTile(
              leading: Text(
                'Rate us',
                style: style,
              ),
              title: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.orangeAccent,),
                    Icon(Icons.star, color: Colors.orangeAccent,),
                    Icon(Icons.star, color: Colors.orangeAccent,),
                    Icon(Icons.star, color: Colors.orangeAccent,),
                    Icon(Icons.star_half, color: Colors.orangeAccent,),
                    Text('(4.5)', style: style,)
                  ],
                ),
              trailing: IconButton(icon: Icon(Icons.arrow_forward_ios),),
            )
          ],
        ),
      ),
    );
  }
}
