import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc4 extends Cubit<int> {
  CounterBloc4() : super(0);

  bool _light = true;
  get light => _light;

  int _counter = 0;
  get counter => _counter;

  void cTheme() {
    _light = !_light;
    emit(1);
  }

  void add() {
    _counter++;
    emit(_counter);
  }

  void minus() {
    _counter--;
    emit(_counter);
  }
}
