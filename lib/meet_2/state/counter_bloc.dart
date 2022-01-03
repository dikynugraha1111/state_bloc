import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc2 extends Bloc<String, int> {
  CounterBloc2() : super(0);

  int _value = 0;
  get value => _value;

  Stream<int> mapEventToState(event) async* {
    event == "add" ? _value++ : _value--;
    yield _value;
  }
}
