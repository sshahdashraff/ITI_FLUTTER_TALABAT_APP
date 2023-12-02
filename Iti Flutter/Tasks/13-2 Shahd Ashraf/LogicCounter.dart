import 'package:bloc/bloc.dart';
import 'package:untitled1/bloc/StateCounter.dart';

class CounterLogic extends Cubit<Counterstate>{
  CounterLogic():super(InItState());
  int s=0;
  void plusS(){
    s++;
    emit(Plus());
  }
  void minusS(){
    s--;
    emit(Minus());
  }
  void restartS(){
    s=0;
    emit(Restart());
  }
}