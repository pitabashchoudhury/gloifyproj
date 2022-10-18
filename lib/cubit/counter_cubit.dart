import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(value: 0, name: ''));

  void increment() {
    emit(
      CounterState(
        value: state.value + 1,
        name: state.name,
      ),
    );
  }

  void decrement() {
    emit(
      CounterState(
        value: state.value - 1,
        name: state.name,
      ),
    );
  }

  void changeName(String name) {
    emit(
      CounterState(
        value: state.value,
        name: name,
      ),
    );
  }
}
