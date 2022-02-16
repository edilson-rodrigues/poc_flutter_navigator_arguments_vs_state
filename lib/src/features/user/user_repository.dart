import 'package:flutter_state/src/features/user/user_mock.dart';
import 'package:flutter_state/src/features/user/user_model.dart';

class UserRepository {
  Future<List<UserModel>> getUser() async {
    await Future.delayed(const Duration(seconds: 3));
    var response = UserMock.user;
    var data = response.map((e) => UserModel.fromMap(e)).toList();
    return data;
  }
}
