import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerAndTabBarScreen extends StatefulWidget {
  const DrawerAndTabBarScreen({Key? key}) : super(key: key);

  @override
  State<DrawerAndTabBarScreen> createState() => _DrawerAndTabBarScreenState();
}

class _DrawerAndTabBarScreenState extends State<DrawerAndTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer and tab bar"),
          bottom: TabBar(tabs: [
            Tab(text: "TAB1",),
            Tab(text: "TAB2",),
            Tab(text: "TAB3",)
          ]),
        ),
        drawer: Drawer(
            semanticLabel: "Label",
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Text("this is header drawer")),
                ListTile(
                  title: Text("Title 1"),
                  leading: Icon(Icons.import_contacts_sharp),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Title 1"),
                  leading: Icon(Icons.import_contacts_sharp),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Title 1"),
                  leading: Icon(Icons.import_contacts_sharp),
                  onTap: (){},
                )
              ],
            )
        ),
        body: TabBarView(children: [
          Center(child: Text("1")),

          Center(child: Text("2")),
          Center(child: Text("3")),
        ]),
      ),
    );
  }
}
