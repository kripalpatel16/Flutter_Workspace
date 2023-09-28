import 'package:flutter/material.dart';
import 'package:modul3/task56.dart';



class Textview extends StatefulWidget {
  @override
  TextviewState createState() => TextviewState();
}

class TextviewState extends State<Textview> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("55-Textview"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            title: Text('Policy'),
            subtitle: Text('Read before submit'),
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value ?? false;
              });
            },
          ),
          if (_isChecked)
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "It is a long-established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to 'using Content here, content here,' making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many websites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humor and the like).",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),

        ],
      ),
      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => image()));
        },
      ),
    );

  }
}
