import 'package:batman_counter/bloc/counter_event.dart';
import 'package:batman_counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      final newValue = state.count + 1;
      emit(CounterState(newValue));
    });
    on<CounterDecrementPressed>((event, emit) {
      final newValue = state.count - 1;
      emit(CounterState(newValue));
    });
  }
}
