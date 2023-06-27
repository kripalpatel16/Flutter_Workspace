/*Write a program to find the simple Interest.*/
import 'dart:io';

void main()
{
  print("enter p:");
  int p = int.parse(stdin.readLineSync());

  print("enter r:");
  int r = int.parse(stdin.readLineSync());

  print("enter n:");
  int n = int.parse(stdin.readLineSync());

  double i = p * r * n / 100;
  print("Simple interest is:");
  print(i);
}

