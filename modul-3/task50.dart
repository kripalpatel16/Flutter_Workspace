import 'package:flutter/material.dart';
import 'package:modul3/task51.dart';



class MyApp5 extends StatefulWidget
{
  @override
  reversState createState() => reversState();
}

class reversState extends State<MyApp5>
{
  TextEditingController _numberController = TextEditingController();
  String _number = '';

  void _calculateReverse()
  {
    String number = _numberController.text;
    String reversedNumber = number.split('').reversed.join();
    setState(()
    {
      _number = reversedNumber;
    }
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("50-Reverse Numbers"),
        ),
        body: Column
          (
          children:
          [
            Container
              (
              padding: EdgeInsets.all(16.0),
              child: Column
                (
                children:
                [
                  TextFormField
                    (
                    controller: _numberController,
                    decoration: InputDecoration
                      (
                      icon: Icon(Icons.numbers),
                      hintText: "Enter a number",
                      labelText: 'Any number',
                    ),
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (value) {},
                    validator: (value)
                    {
                      _number = value!;
                      if (value.isEmpty)
                      {
                        return 'Please enter a valid number';
                      }
                      return null;
                    },
                  ),
                  SizedBox
                    (
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  ElevatedButton
                    (
                    onPressed: () {
                      _calculateReverse();
                    },
                    child: Text("Reverse"),
                  ),
                  Text(
                    'Reversed Number: $_number',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton
          (
          child: Icon(Icons.navigate_next),
          onPressed: ()
          {
            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => NumberInputScreen()));
          },
        ),

      ),
    );
  }
}
