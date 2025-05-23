import 'package:modu_3_dart_study/2025-03/2025-03-31/models/user.dart';

abstract interface class UserDataSource {
  Future<List<User>> getUsers(String relativePath);
}
