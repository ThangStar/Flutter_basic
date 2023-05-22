import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterPlus>(counterPlus);

    on<CounterMinus>(counterMinus);
  }

  FutureOr<void> counterMinus(CounterMinus event, Emitter<CounterState> emit) {
    print("minus clicked");
  }

  FutureOr<void> counterPlus(CounterPlus event, Emitter<CounterState> emit) {

    emit(CounterState(count: state.count + 1));
  }
}
