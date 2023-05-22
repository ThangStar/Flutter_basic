import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/counter_bloc_screen/counter_bloc.dart';

class CounterBlocScreen extends StatefulWidget {
  const CounterBlocScreen({Key? key}) : super(key: key);

  @override
  State<CounterBlocScreen> createState() => _CounterBlocScreenState();
}

class _CounterBlocScreenState extends State<CounterBlocScreen> {
  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter bloc"),
      ),
      body: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text("Count: ${state.count}");
            },
          )
      ),
      floatingActionButton:
      FloatingActionButton(
          onPressed: () => counterBloc.add(CounterPlus()),
          child: Icon(Icons.add)),
    );
  }
}
