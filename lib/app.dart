import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/bindings/general_bindings.dart';
import 'package:instagram_clone/utils/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      theme: LAppTheme.darkTheme,
      home: const CircularProgressIndicator(color: Colors.white,),
    );
  }
}
