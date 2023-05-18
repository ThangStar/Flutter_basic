import 'dart:convert';

import 'package:first_app/service/repository/api_status.dart';
import 'package:http/http.dart' as http;

import '../../model/user.dart';
import '../utils/constants.dart';

class UserService {
  static Future<Object> getDataUser() async {
    try {
      final response = await http.get(Uri.parse(API_URL));
      if(response.statusCode == 200){
        return Success(body: response.body);
      }
      return Failure(response.statusCode, "Error");
    } catch (e) {
      return Failure(103, "Error");
    }
  }
}
