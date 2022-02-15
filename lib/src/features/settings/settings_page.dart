import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../store.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  static const String route = 'settings-page';

  @override
  Widget build(BuildContext context) {
    final appStore = AppStore.instance;

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args.title),
            Text(args.message),
            SizedBox(height: Spacing.x1),
            ValueListenableBuilder<String?>(
                valueListenable: appStore.myName,
                builder: (context, name, __) {
                  if (name != null) {
                    return Text(name);
                  }

                  return const SizedBox();
                }),
          ],
        ),
      ),
    );
  }
}
