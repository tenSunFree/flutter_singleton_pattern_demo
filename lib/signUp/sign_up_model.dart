class SignUpModel {
  String _email;

  String get getEmail => _email;
  static final SignUpModel _instance = SignUpModel._internal();

  factory SignUpModel() {
    return _instance;
  }

  SignUpModel._internal() {
    _email = "";
  }

  void setEmail(String email) {
    _email = email;
  }
}
