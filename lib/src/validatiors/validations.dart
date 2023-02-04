class Validations {
  static bool isValidUser(String user) {
    return user.isNotEmpty && user.length >= 6 && user.contains('@');
  }

  static bool isValidPassword(String pass) {
    return pass.isNotEmpty && pass.length >= 6;
  }
}
