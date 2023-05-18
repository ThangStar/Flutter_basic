import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/view_models/anime_view_model.dart';
import 'package:first_app/view_models/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserViewModels()),
        ChangeNotifierProvider(create: (context) => AnimeViewmodel(),)
      ],
      child: const MaterialApp(
        title: "Navigation demo",
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
