int sumList(List l)
{
  int sum=0;
  for(int i=0;i<l.length;i++)
    {
      sum=sum+l[i];
    }
  return sum;
}
double average(List m)
{
  int sum=0;
  for(int i=0;i<m.length;i++)
  {
    sum=sum+m[i];
  }
  return sum/m.length;
}
int max(List n)
{
  var max=n[0];
  for(int i=1;i<n.length;i++ )
    if (n[i] > max)
      max=n[i];

   return max ;
  
}
int min(List r)
{
  var min=r[0];
  for(int i=1;i<r.length;i++ )
    if (r[i] < min)
    min=r[i];

   return min ;

}
void y(List o)
{
  print(o);
}
main()
{
List k=[2,3,6];
print('sum is ${sumList(k)}');
print('average is ${average(k)}');
print('maximum value is ${max(k)}');
print('minimum value is ${min(k)}');
y(k);
}