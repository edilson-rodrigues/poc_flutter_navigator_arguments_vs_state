import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../store.dart';
import '../features.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  static const String route = 'home-page';
}

class _MyHomePageState extends State<MyHomePage> {
  final appStore = AppStore.instance;

  final String _title = 'Arguments Title';
  final String _message = 'Arguments Message';

  void _nextPage() {
    /// arguments
    Navigator.pushNamed(
      context,
      MySettingsPage.route,
      arguments: ScreenArguments(
        title: 'home-page ' + _title,
        message: 'home-page ' + _message,
      ),
    );

    ///store
    appStore.setName('app-store ' + _title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_title),
            Text(_message),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _nextPage,
        tooltip: 'NextPage',
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
