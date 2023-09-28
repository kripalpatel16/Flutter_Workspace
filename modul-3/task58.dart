import 'package:flutter/material.dart';
import 'package:modul3/task59.dart';






class ColorSelectorScreen extends StatefulWidget {
  @override
  _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
}

class _ColorSelectorScreenState extends State<ColorSelectorScreen> {
  Color selectedColor = Colors.red;

  void _handleColorChange(Color? color) {
    if (color != null) {
      setState(() {
        selectedColor = color;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector'),
      ),
      body: Container(
          color: selectedColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RadioListTile<Color>(
                title: Text('Red'),
                value: Colors.red,
                groupValue: selectedColor,
                onChanged: _handleColorChange,
              ),
              RadioListTile<Color>(
                title: Text('Green'),
                value: Colors.green,
                groupValue: selectedColor,
                onChanged: _handleColorChange,
              ),
              RadioListTile<Color>(
                title: Text('Blue'),
                value: Colors.blue,
                groupValue: selectedColor,
                onChanged: _handleColorChange,
              ),
              SizedBox(height: 20),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Mylogin()));
        },
      ),
    );
  }
}
