import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortz/constants.dart';
import 'package:shortz/controllers/auth_controller.dart';
import 'package:shortz/views/screens/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shortz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFFA000),
          secondary: const Color(0xFFFFC107),
          primaryVariant: const Color(0xFFFFA000),
          onPrimary: const Color(0xFFFFA000),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFFFA000),
      ),
      themeMode: ThemeMode.system,
      home: LoginScreen(),
    );
  }
}
