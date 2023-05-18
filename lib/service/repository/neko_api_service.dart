import 'package:first_app/service/repository/api_status.dart';
import 'package:first_app/service/utils/constants.dart';
import 'package:http/http.dart' as http;

import '../../model/neko.dart';

class NekoApiService {
  static Future<Object> getListNeko() async {
    try {
      final response = await http.get(Uri.parse(API_URL_NEKO));
      if(response.statusCode == 200){
        return Success(body: response.body);
      }
      return Failure(response.statusCode, "Request failure");
    } catch (e) {
      return Failure(103, "Unknown error");
    }
  }
}
