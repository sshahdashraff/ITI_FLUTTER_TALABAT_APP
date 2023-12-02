

import 'package:untitled1/shape.dart';

class Circle extends Shape
{

    double radius;
    Circle({String color,bool filled, double radius}):super(color, filled)
    {
       this.radius=radius;
    }
    double GetArea()
    {
     return (radius*radius*3.14);
    }
   double GetPerimeter()
   {

     return(radius*2*3.14);
   }
   String toStr()
   {
     print('radius =$radius');
     print('Area =${radius*radius*3.14}');
     print('Perimeter= ${radius*2*3.14}');
   }
}