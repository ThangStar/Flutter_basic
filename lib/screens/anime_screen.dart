import 'package:first_app/model/neko.dart';
import 'package:first_app/service/repository/neko_api_service.dart';
import 'package:first_app/view_models/anime_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({Key? key}) : super(key: key);

  @override
  State<AnimeScreen> createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {

  @override
  Widget build(BuildContext context) {
    AnimeViewmodel animeModel = context.watch();

    return Scaffold(
      appBar: AppBar(
        title: Text("Anime API Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: animeModel.arrNeko.length,
              itemBuilder: (context, index) {
                Neko neko = animeModel.arrNeko[index];
                 return ListTile(
                   title: Text(neko.artistName),
                   subtitle: Text(neko.artistHref),
                   leading: Image.network(
                     neko.url
                   ),
                 );
              },
            ),
          ),
          ElevatedButton(onPressed: () {
          animeModel.getData();
        }, child: Text("Get data"))],
      ),
    );
  }
}
