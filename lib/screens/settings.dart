import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Stateful widget for managing name data
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: ListBody(
          children: <Widget>[
            Container(
              height: 10.0,
            ),
            if (!kIsWeb)
              ListTile(
                  leading: const Icon(Icons.fingerprint),
                  title: const Text('Enable Biometrics'),
                  subtitle: Platform.isIOS
                      ? const Text('TouchID or FaceID')
                      : const Text('Fingerprint')),
            const Divider(
              height: 20.0,
            ),
            const ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Stay Logged In'),
              subtitle: Text('Logout from the Main Menu'),
            ),
            const Divider(height: 20.0),
            const Divider(height: 20.0),
          ],
        ),
      )),
    );
  }
}
