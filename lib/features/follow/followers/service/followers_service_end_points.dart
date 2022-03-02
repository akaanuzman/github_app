// ignore_for_file: constant_identifier_names

enum FollowersServiceEndPoints { FOLLOWERS }

extension FollowersServiceExtension on FollowersServiceEndPoints {
  String rawValue(String username) {
    switch (this) {
      case FollowersServiceEndPoints.FOLLOWERS:
        return '/$username/followers';
    }
  }
}
