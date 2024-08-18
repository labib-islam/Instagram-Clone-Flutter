import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/features/authentication/screens/login/login.dart';
import 'package:instagram_clone/utils/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: LAppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}
