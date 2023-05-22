import 'package:first_app/blocs/counter_bloc_screen/counter_bloc.dart';
import 'package:first_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterBloc(),
    child: const MaterialApp(
      title: "Navigation demo",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
