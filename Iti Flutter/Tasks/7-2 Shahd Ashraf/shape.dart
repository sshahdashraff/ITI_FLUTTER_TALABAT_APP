
import 'dart:ffi';

abstract class Shape
{
  String color;
  bool filled;
  Shape(String color, bool filled)
  {
    this.color=color;
    this.filled=filled;
  }
  double GetArea();

  double GetPerimeter();
  String toStr();

}