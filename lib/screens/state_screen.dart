import 'package:flutter/material.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State less & State full"),
      ),
      body: Column(
        children: [StateFulDemo()],
      ),
    );
  }
}

class StateLessDemo extends StatelessWidget {
  final int counter;
  const StateLessDemo({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("counter in less: $counter"),
      ],
    );
  }
}

class StateFulDemo extends StatefulWidget {
  StateFulDemo({Key? key}) : super(key: key);
  int counter = 0;

  @override
  State<StateFulDemo> createState() => _StateFulDemoState();
}

class _StateFulDemoState extends State<StateFulDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StateLessDemo(counter: widget.counter),
        ElevatedButton(
            onPressed: () {
              setState(() {
                widget.counter++;
              });
            },
            child: Text("Counter ++"))
      ],
    );
  }
}
