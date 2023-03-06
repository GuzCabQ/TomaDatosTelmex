import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(320, 568),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        theme: ThemeApp.theme,
        title: 'Material App',
        home: Scaffold(
          backgroundColor: ColorsApp.primaryColor,
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(
            child: Text(
              'Hello World',
              style: FontsApp.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }
}
