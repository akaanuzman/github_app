// ignore_for_file: constant_identifier_names

enum UserServiceEndPoints { USER }

extension UserServiceExtension on UserServiceEndPoints {
  String rawValue(String username) {
    switch (this) {
      case UserServiceEndPoints.USER:
        return '/$username';
    }
  }
}
