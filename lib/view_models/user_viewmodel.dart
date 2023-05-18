import 'package:first_app/model/user.dart';
import 'package:first_app/service/repository/api_status.dart';
import 'package:first_app/service/repository/user_service.dart';
import 'package:flutter/material.dart';

class UserViewModels extends ChangeNotifier {
  bool _isLoading = false;
  List<User> _arrUser = [];

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
  }

  List<User> get arrUser => _arrUser;

  set arrUser(List<User> value) {
    _arrUser = value;
  }

  setArrUser(List<User> arrUser) {
    _arrUser = arrUser;
    notifyListeners();
  }

  setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  getArrUser() async {
    _isLoading = true;
    var response = await UserService.getDataUser();
    if (response is Success) {
      //parse to List<User>
      List<User> arrUser = Result.fromRawJson(response.body).results;
      //set data to constructor
      setArrUser(arrUser);
    }
  }
}
