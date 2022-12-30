part of 'counter_bloc_cubit.dart';

abstract class CounterBlocState {
  const CounterBlocState();
}

class CounterBlocInitial extends CounterBlocState {
  final int value;

  CounterBlocInitial(this.value);

  int get props => value;
}

class CounterBlocChanged extends CounterBlocState {
  final int value;

  CounterBlocChanged(this.value);

  int get props => value;
}
