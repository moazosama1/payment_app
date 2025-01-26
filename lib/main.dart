import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/theme_app.dart';
import 'package:payment_app/feature/my_car/presentation/view/my_car_view.dart';
import 'package:payment_app/feature/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashView.routeName: (_) => SplashView(),
        MyCarView.routeName: (_) => MyCarView(),
      },
      initialRoute: SplashView.routeName,
      title: 'Payment App',
      theme: ThemeApp.themeLight,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
