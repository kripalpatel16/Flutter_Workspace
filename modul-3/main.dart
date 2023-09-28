import 'package:flutter/material.dart';
import 'package:modul3/task50.dart';

void main()
{
  runApp
    (
    MaterialApp
      (
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: MyApp5(),
    ),
  );
}