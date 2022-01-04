import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc5 extends Cubit<int> {
  CounterBloc5() : super(0);

  int _counter = 0;
  get counter => _counter;
  bool _light = true;
  get light => _light;

  void add() {
    _counter++;
    emit(_counter);
  }

  void minus() {
    _counter--;
    emit(_counter);
  }

  void cMode() {
    _light = !_light;
    emit(0);
  }
}

class Mode extends Cubit<bool> {
  Mode() : super(true);

  void cMode() => emit(!state);
}
