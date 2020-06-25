import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //third party library added for more icons

class Tabs extends StatelessWidget {
  final int index;

  Tabs(this.index);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      currentIndex: index,
      //indicates which tab will be selected
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.newspaper),
          title: Text('News'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border),
          title: Text('Watchlist'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    );
  }
}
