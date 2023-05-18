import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation container"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyAnimation(),
          ],
        ),
      ),
    );
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);


  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  bool isLarge = false;

  void onChange() {
    setState(() {
      isLarge = !isLarge;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: isLarge ? 100 : 200,
          curve: Curves.bounceOut,
          child: Image.asset("assets/images/demo.png"),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isLarge = !isLarge;
              });
            },
            child: Text("data")),
        MyButton(onPressed: onChange)
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  Function() onPressed;

  MyButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: const Text("Change value"));
  }
}
