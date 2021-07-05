class Contas {
  String? email;
  String? name;
  String? password;

  Contas();

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }
}
