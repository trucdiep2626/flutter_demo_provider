import 'package:flutter/material.dart';
import 'package:flutter_demo_app/screen/home_screen.dart';
import 'package:flutter_demo_app/screen/life_cycle_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
;
void main() {
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => LifeCycleManager(
          child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: HomeScreen(),
              // MultiProvider(
              //   providers: [
              //     StateNotifierProvider<HomeProvider, HomeState>(
              //         create: (_) => HomeProvider(),)
              //   ],
              //   child: HomeScreen(),
              // )
          ),
        )
    );
  }
}
