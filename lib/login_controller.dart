class LoginController {
  String email = '';
  String password = '';

  // ignore: non_constant_identifier_names
  void OnChanged({String? email, String? password}) {
    this.email = email ?? this.email;
    this.password = password ?? this.password;
  }

  bool login() {
    if (email == "rafa@gmail.com" && password == "123456") {
      return true;
    } else {
      return false;
    }
  }
}
