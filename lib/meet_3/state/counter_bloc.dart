import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc3 extends Cubit<int> {
  CounterBloc3(initialState) : super(initialState);

  int _count = 0;
  get count => _count;

  void add() {
    _count++;
    emit(count);
  }

  void minus() {
    _count--;
    emit(count);
  }
}
