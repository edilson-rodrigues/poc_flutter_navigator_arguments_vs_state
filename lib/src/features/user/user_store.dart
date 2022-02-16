import 'dart:developer' as devtools show log;

import 'package:flutter/foundation.dart';
import 'package:flutter_state/src/features/user/user_model.dart';

import 'user_repository.dart';

class UserStore {
  static final UserStore instance = UserStore._();
  UserStore._();

  var userList = ValueNotifier<List<UserModel>?>(null);

  Future<void> setUserList() async {
    userList.value = await UserRepository().getUser();

    debugPrint(userList.value.toString());
  }

  void authenticate({required String login, required String password}) {
    if (userList.value != null) {
      try {
        var user = userList.value!.firstWhere(
          (UserModel e) => (e.login == login) && (e.pass == password),
        );

        devtools.log(user.toString());
      } catch (e) {
        devtools.log(e.toString());
      }
    }
  }
}
