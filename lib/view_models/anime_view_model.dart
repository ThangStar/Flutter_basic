import 'package:first_app/service/repository/api_status.dart';
import 'package:first_app/service/repository/neko_api_service.dart';
import 'package:flutter/material.dart';

import '../model/neko.dart';

class AnimeViewmodel extends ChangeNotifier {
  List<Neko> _arrNeko = [];
  bool _isLoading = false;


  AnimeViewmodel(){
   getData();
  }

  List<Neko> get arrNeko => _arrNeko;

  set arrNeko(List<Neko> value) {
    _arrNeko = value;
  }

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
  }

  getData() async {
    _isLoading = true;
    final result = await NekoApiService.getListNeko();
    if (result is Success) {
      final arrNeko = NekoBody.fromRawJson(result.body).results;
      _arrNeko = arrNeko;
      notifyListeners();
    }
  }
}
