import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul3/task55.dart';



class font extends StatefulWidget
{
  @override
  fontState createState() => fontState();


}

class fontState extends State<font>
{

  double _fontsize = 14.0; // defult font size

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("54-Font Size Changer"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Text("font`s", style: TextStyle(fontSize: _fontsize),),
            SizedBox(width: 100,height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                IconButton
                  (
                  icon: Icon(Icons.add),
                  iconSize: 50,
                  padding: EdgeInsets.all(50),
                  color: Colors.blue,
                  onPressed: ()
                  {
                    _increaseFontSize();
                  },
                ),

                IconButton
                  (
                  icon: Icon(Icons.remove),
                  iconSize: 50,
                  color: Colors.blue,
                  padding: EdgeInsets.all(50),
                  onPressed: ()
                  {
                    _decreaseFontSize();
                  },
                ),


              ],
            )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Textview()));
        },
      ),

    );
  }

  void _increaseFontSize()
  {
    setState(() {
      _fontsize += 6.0; // Increase 2 units in fontsize
    });
  }

  void _decreaseFontSize()
  {
    setState(() {
      _fontsize -= 6.0; // Decrease 2 units in fontsize
    });
  }
}
