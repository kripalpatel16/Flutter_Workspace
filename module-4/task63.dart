import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class AlertDialogposneg extends StatelessWidget {
  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Choose an option'),
                  content: Text('What would you like to do?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        showToast('Positive Button Clicked');
                        Navigator.of(context).pop();
                      },
                      child: Text('Positive'),
                    ),
                    TextButton(
                      onPressed: () {
                        showToast('Negative Button Clicked');
                        Navigator.of(context).pop();
                      },
                      child: Text('Negative'),
                    ),
                    TextButton(
                      onPressed: () {
                        showToast('Neutral Button Clicked');
                        Navigator.of(context).pop();
                      },
                      child: Text('Neutral'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}