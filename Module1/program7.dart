/*Write a program to calculate sum of 5 subjects & find the percentage.
Subject marks entered by user.*/

import 'dart:io';

void main()
{
  print("enter a marks 1:");
  int a = int.parse(stdin.readLineSync());

  print("enter a marks 2:");
  int b = int.parse(stdin.readLineSync());

  print("enter a marks 3:");
  int c = int.parse(stdin.readLineSync());

  print("enter a marks 4:");
  int d = int.parse(stdin.readLineSync());

  print("enter a marks 5:");
  int e = int.parse(stdin.readLineSync());

  int sum = a + b + c + d + e;
  print("the total of marks");
  print(sum);

  double persant = sum /500 * 100;
  print("persantage is:");
  print(persant);
}
