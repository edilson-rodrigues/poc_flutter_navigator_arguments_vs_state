import 'package:flutter/material.dart';

class AppStore {
  static final AppStore instance = AppStore._();
  AppStore._();

  final myName = ValueNotifier<String?>(null);

  void setName(value) => myName.value = value;
}
