import 'package:flutter/material.dart';
import 'package:flutter_demo_app/screen/home_provider.dart';
import 'package:flutter_demo_app/screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375,812),
    builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => HomeProvider()),
          ],
          child: HomeScreen(),
        )));
  }
}

