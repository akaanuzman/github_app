// ignore_for_file: constant_identifier_names

enum FollowingServiceEndPoints { FOLLOWING }

extension FollowingServiceExtension on FollowingServiceEndPoints {
  String rawValue(String username) {
    switch (this) {
      case FollowingServiceEndPoints.FOLLOWING:
        return '/$username/following';
    }
  }
}
