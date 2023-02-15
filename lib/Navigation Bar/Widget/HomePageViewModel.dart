import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';

class HomepageViewModel extends ChangeNotifier {
  UserModel _userData = UserModel();
  UserModel get userData => _userData;

  void addUser(UserModel user) {
    _userData = user;
    notifyListeners();
  }
}