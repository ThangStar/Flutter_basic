import 'package:first_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class UiCourse1 extends StatelessWidget {
  const UiCourse1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demo column & row"),
      ),
      body: const Column(
        children: [
          BannerHome(),
          TitleSection(),
          ActionHome(),
          ContentTextHome()
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailScreen()));
          }, child: const Text("Go to detail screen")),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kandersteg, Switzerland',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "This is content",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.normal, color: Colors.grey[500]),
              )
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text("41")
            ],
          )
        ],
      ),
    );
  }
}

class BannerHome extends StatelessWidget {
  const BannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Image.asset(
          "assets/images/banner.png",
          fit: BoxFit.cover,
        ));
  }
}

class ActionHome extends StatelessWidget {
  const ActionHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                color: Colors.blue,
                icon: const Icon(Icons.call),
                onPressed: () {},
              ),
              const Text(
                "CALL",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              const Text(
                "CALL",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.call, color: Colors.blue),
                onPressed: () {},
              ),
              const Text(
                "CALL",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ContentTextHome extends StatelessWidget {
  const ContentTextHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
          "This guide then takes a step back to explain Flutter’s approach"
              " to layout, and shows how to place a single widget on the screen. After "
              "a discussion of how to lay widgets out horizontally and vertically, some "
              "of the most common layout widgets are covered."),
    );
  }
}
