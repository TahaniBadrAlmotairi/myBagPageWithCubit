import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int count = 0;

  void increment() {
    count++;
    emit(CounterChanged(count));
  }

  void decrement() {
    count--;
    emit(CounterChanged(count));
  }
}
