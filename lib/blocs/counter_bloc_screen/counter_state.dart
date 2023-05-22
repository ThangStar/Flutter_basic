part of 'counter_bloc.dart';

class CounterState extends Equatable {
  int count;
  CounterState({this.count = 0});

  @override
  // TODO: implement props
  List<Object?> get props => [count];

}

class CounterInitial extends CounterState {
  CounterInitial();
}
