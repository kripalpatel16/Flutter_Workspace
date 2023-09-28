import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul3/task54.dart';


class BackgroundChanger extends StatefulWidget {
  @override
  BackgroundChangerState createState() => BackgroundChangerState();
}

class BackgroundChangerState extends State<BackgroundChanger> {
  Color _backgroundColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("53- BackgroundChanger")),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _changeBackgroundColor,
                child: Text("Change color"),
              ),

            ],


          ),
        ),
      ),
      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => font()));
        },
      ),
    );
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.black
          ? Colors.white
          : Colors.black;
    });
  }
}
