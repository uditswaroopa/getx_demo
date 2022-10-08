import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/page/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) => const GetMaterialApp(
            home: HomePage(),
            debugShowCheckedModeBanner: false,
          )),
      splitScreenMode: true,
      minTextAdapt: false,
      designSize: const Size(828, 1792),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }
}
