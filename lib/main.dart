import 'package:flutter/material.dart';
import 'package:kissan_book/Utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   fontFamily: 'Raleway',
      //   useMaterial3: true,
      // ),
      // home: CommentsScreen(),
      initialRoute: AppRoutes.SPLASH_SCREEN_ROUTE,
      routes: AppRoutes.pageRoute,
    );
  }
}