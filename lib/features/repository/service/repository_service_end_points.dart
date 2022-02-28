// ignore_for_file: constant_identifier_names

enum RepositoryServiceEndPoints { REPO }

extension RepositoryServiceExtension on RepositoryServiceEndPoints {
  String rawValue(String username) {
    switch (this) {
      case RepositoryServiceEndPoints.REPO:
        return '/$username/repos';
    }
  }
}
