import 'dart:async';

import 'package:thousands_sunny/src/validatiors/validations.dart';

class LoginBloc {
  StreamController _userController = StreamController();
  StreamController _passController = StreamController();

  bool isValidInfor(String username, String password) {
    if (!Validations.isValidUser(username)) {
      _userController.sink.addError("Tài khoản không hợp lệ");
      return false;
    }
    if (!Validations.isValidPassword(password)) {
      _passController.sink.addError("Mật khẩu phải trên 6 ký tự");
      return false;
    }
    return true;
  }

  void dispose() {
    _userController.close();
    _passController.close();
  }
}
