abstract class CounterState {
  final int count;
  CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}

class CounterChanged extends CounterState {
  CounterChanged(int count) : super(count);
}
