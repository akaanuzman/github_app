class AppValidators {
  static AppValidators? _instace;
  static AppValidators get instance {
    _instace ??= AppValidators._init();
    return _instace!;
  }

  AppValidators._init();

  String passwordCheck(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter a password.';
    } else if (password.contains(' ')) {
      return 'Password cannot contain spaces.';
    } else if (password.length < 6) {
      return 'The password can be at least 6 characters.';
    } else if (password.length > 25) {
      return 'Password can be up to 25 characters.';
    } 
    return '';
  }

  String emailCheck(String? email) {
    if (email == null) {
      return 'Please enter your e-mail address.';
    }
    if (RegExp(r'^(\S+@\S+\.\S+$)').hasMatch(email)) {
      return '';
    }
    return 'Email address is invalid.';
  }
}