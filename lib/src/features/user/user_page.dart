import 'package:flutter/material.dart';

import 'user.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  static const route = 'user-page';

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final userStore = UserStore.instance;
  String? login;
  String? password;

  @override
  void initState() {
    userStore.setUserList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            TextField(
              onChanged: (value) {
                login = value;
              },
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (login != null && password != null) {
          userStore.authenticate(login: login!, password: password!);
        }
      }),
    );
  }
}
