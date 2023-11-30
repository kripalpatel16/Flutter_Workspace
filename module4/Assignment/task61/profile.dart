import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget
{
  @override
  PorfileState createState() => PorfileState();

}

class PorfileState  extends State<ProfileTab> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                "https://couthie-routes.000webhostapp.com/images/download.jpg"),
          ),
          SizedBox(height: 20),
          Text(
            'kevin pater',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'kevinpater@example.com',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add an action for editing the profile
            },
            child: Text('Edit Profile'),
          ),
        ],
      ),
    );
  }

}
