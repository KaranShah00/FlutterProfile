import 'package:flutter/material.dart';

import '../widgets/tabs.dart';
import '../widgets/personal_details.dart';
import '../widgets/options.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: PersonalDetails(), //for name, profile pic, email of user
              ),
              Positioned(
                //used for layout of elements in stack
                bottom: 30,
                left: 30,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:
                      Options(), //for providing various profile options to user
                ),
              ),

              //Buttons are used at end of stack list as in a stack widget the
              //last widget is displayed on top of previous widgets

              PopupMenuButton(
                //no alignment needed here as by default stack places widgets in top left
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('Option1'),
                  ),
                  PopupMenuItem(
                    child: Text('Option2'),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Tabs(3),
    );
  }
}
