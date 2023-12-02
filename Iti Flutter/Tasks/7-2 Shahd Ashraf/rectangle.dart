import 'package:untitled1/shape.dart';

class Rectangle extends Shape
{
  double length;
  double width;
  Rectangle({String color, bool filled, double length, double width}):super(color,filled) {
    this.length = length;
    this.width = width;
  }
  double GetArea()
  {
    return(length*width);
  }
  double GetPerimeter()
  {
    return((length+width)*2);
  }
  String toStr()
  {
    print('length =$length');
    print('width = $width');
    print('Area = ${length*width}');
    print('Perimeter= ${(length+width)*2 }');
  }
}