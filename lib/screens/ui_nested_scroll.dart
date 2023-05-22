import 'package:flutter/material.dart';

class NestedScrollUI extends StatefulWidget {
  const NestedScrollUI({Key? key}) : super(key: key);

  @override
  State<NestedScrollUI> createState() => _NestedScrollUIState();
}

class _NestedScrollUIState extends State<NestedScrollUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Breakfast",
          style: TextStyle(color: Colors.black),
        ),
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200],
            ),
            child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: Container(
                    margin: const EdgeInsets.all(8),
                    child: const Icon(
                        color: Colors.black, Icons.arrow_back_ios_new))),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[200],
              ),
              child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(8),
                      child: const Icon(
                          color: Colors.black, Icons.more_horiz_outlined))),
            ),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
