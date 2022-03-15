import 'package:flutter/material.dart';
import 'package:flutter_web/routes/routes.dart';
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
      title: 'Redstar Mentality',
      debugShowCheckedModeBanner: false,
      theme: ThemesApp.dark,
      getPages: Approutes.routes,
      initialRoute: Approutes.home,
    );
  }
}
