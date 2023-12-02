
import 'package:untitled1/Circle.dart';

import 'rectangle.dart';

void main()
{
  Rectangle t=Rectangle();
  Circle q=Circle();

  t.length=10;
  t.width=2;
  t.color='black';
  t.filled=true;
  t.toStr();

  q.radius=5;
  q.color='yellow';
  q.filled=false;
  q.toStr();

}