import 'package:first_app/service/repository/api_status.dart';
import 'package:first_app/service/repository/neko_api_service.dart';
import 'package:get/get.dart';

import '../model/neko.dart';

class GetXScreenViewmodel extends GetxController {
  RxList<Neko> _arrNeko = <Neko>[].obs;

  GetXScreenViewmodel(){
   getListNeko();
  }

  RxList<Neko> get arrNeko => _arrNeko;

  set arrNeko(RxList<Neko> value) {
    _arrNeko = value;
  }

  getListNeko() async {
    final result = await NekoApiService.getListNeko();
    if(result is Success){
      _arrNeko = NekoBody.fromRawJson(result.body).results.obs;
      _arrNeko.refresh();
    }
  }
}
