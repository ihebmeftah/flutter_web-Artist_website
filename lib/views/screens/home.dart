import 'package:flutter/material.dart';

import '../../services/themeservices.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            ThemeServices().changeTheme();
          },
          icon: const Icon(Icons.access_alarm),
        ),
      ),
    );
  }
}
