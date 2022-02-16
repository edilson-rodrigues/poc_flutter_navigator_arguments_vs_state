class UserModel {
  final int id;
  final String login;
  final String pass;

  UserModel({
    required this.id,
    required this.login,
    required this.pass,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id']?.toInt() ?? 0,
      login: map['login'] ?? '',
      pass: map['pass'] ?? '',
    );
  }

  @override
  String toString() => 'UserModel(id: $id, login: $login, pass: $pass)';
}
