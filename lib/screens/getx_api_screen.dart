import 'package:first_app/view_models/getx_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/neko.dart';

class GetXAPIScreen extends StatelessWidget {
  final GetXScreenViewmodel nekoViewModel = Get.put(GetXScreenViewmodel());

  GetXAPIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Api Screen"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Obx(
                () => ListView.builder(
                    itemCount: nekoViewModel.arrNeko.length,
                    itemBuilder: (context, index) {
                      Neko neko = nekoViewModel.arrNeko[index];
                      return ListTile(
                        title: Text(neko.artistName),
                        leading: Image.network(neko.url),
                        subtitle: Text(neko.sourceUrl),
                      );
                    }),
              )),
          ElevatedButton(onPressed: () => print(nekoViewModel.arrNeko.length), child: Text("GET DATA"))
        ],
      ),
    );
  }
}
