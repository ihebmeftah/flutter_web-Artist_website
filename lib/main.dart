import 'package:flutter/material.dart';
import 'package:flutter_web/routes/routes.dart';
import 'package:flutter_web/services/themeservices.dart';
import 'package:flutter_web/views/theme/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeServices().theme,
      getPages: Approutes.routes,
      initialRoute: Approutes.home,
    );
  }
}
