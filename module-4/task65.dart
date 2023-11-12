import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {

    return WillPopScope
      (
      onWillPop: () async
      {
        bool shouldExit = await showExitAlertDialog(context);
        return shouldExit;
      },
      child: Scaffold
        (
          body: Text("Exit Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),)
      ),
    );
  }
}

showExitAlertDialog(BuildContext context)
{

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Exit App'),
        content: Text('Are you sure you want to exit?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Exit'),
          ),
        ],
      );
    },
  );

}