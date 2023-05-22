import 'package:first_app/screens/anime_screen.dart';
import 'package:first_app/screens/api_mvc_screen.dart';
import 'package:first_app/screens/api_user_screen.dart';
import 'package:first_app/screens/counter_bloc_screen.dart';
import 'package:first_app/screens/detail_screen.dart';
import 'package:first_app/screens/drawer_tab_bar_screen.dart';
import 'package:first_app/screens/getx_api_screen.dart';
import 'package:first_app/screens/ui_course1.dart';
import 'package:first_app/screens/ui_nested_scroll.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'state_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UiCourse1()));
                },
                child: const Text("Ui Column & row")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailScreen()));
                },
                child: const Text("Animation")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                },
                child: const Text("Ui login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StateScreen()));
                },
                child: const Text("State full, state less")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiUserScreen()));
                },
                child: const Text("API user")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiMvcScreen()));
                },
                child: const Text("API MVC SCREEN")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimeScreen()));
                },
                child: const Text("API NEKO SCREEN")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrawerAndTabBarScreen()));
                },
                child: const Text("Drawer and tab bar screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GetXAPIScreen()));
                },
                child: const Text("GetX api screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NestedScrollUI()));
                },
                child: const Text("UI Nested scroll")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CounterBlocScreen()));
                },
                child: const Text("Counter bloc screen"))
          ],
        ),
      ),
    );
  }
}
