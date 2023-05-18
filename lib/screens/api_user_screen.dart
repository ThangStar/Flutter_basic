import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class ApiUserScreen extends StatefulWidget {
  List<User> user = [];
  String txtData = "";

  ApiUserScreen({Key? key}) : super(key: key);

  @override
  State<ApiUserScreen> createState() => _ApiUserScreenState();
}

class _ApiUserScreenState extends State<ApiUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API_DEMO"),
      ),
      body: Column(
        children: [
          Text(widget.txtData),
          Expanded(
            child: ListView.builder(
              itemCount: widget.user.length,
              itemBuilder: (context, index) {
                // debugPrint(widget.users[index].picture.medium);
                User user = widget.user[index];
                return ListTile(
                  title: Text("Email: ${user.phone}"),
                  subtitle: Text("Phone: ${user.picture}"),
                  leading: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.network("${user.picture.medium}")),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => getDataUser()),
    );
  }

  void getDataUser() async {
    const url = "https://randomuser.me/api/?results=20";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
      Result rs = Result.fromRawJson(response.body);
      List<User> arrUser = rs.results;
    setState(() {
      widget.user = arrUser;
      widget.txtData = arrUser.toString();
    });
  }
}
