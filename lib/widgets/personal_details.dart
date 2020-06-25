import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {  //Displays all personal information of user

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,  //to take all available width
      child: Card(
        color: Color(0xff00021f),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(                      //used to position multiple widgets on top of each other
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:
                      NetworkImage("https://cdn1.iconfinder.com/data/icons/data-science-1-1/512/20-512.png"),
                    radius: 60,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                      radius: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Mr.John',
                style: TextStyle(
                  fontWeight: FontWeight.w500,  //bit lighter than bold text but bolder than normal text
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                'john.45@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.grey[500]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
