import 'package:bloc/bloc.dart';

part 'counter_bloc_state.dart';

class CounterBlocCubit extends Cubit<CounterBlocState> {
  int value;
  CounterBlocCubit(this.value) : super(CounterBlocInitial(value));

  void changeValue() {
    emit(CounterBlocChanged(value += 1));
  }

  void decrementValue() {
    emit(CounterBlocChanged(value -= 1));
  }
}
