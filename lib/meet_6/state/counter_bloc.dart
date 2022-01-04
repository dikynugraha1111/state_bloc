import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc6 extends Cubit<int> {
  CounterBloc6() : super(0);

  void add() => emit(state + 1);
  void minus() => emit(state - 1);
}
