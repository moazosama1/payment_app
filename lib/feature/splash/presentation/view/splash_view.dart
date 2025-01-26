import 'package:flutter/material.dart';
import 'package:payment_app/feature/my_car/presentation/view/my_car_view.dart';
import 'package:payment_app/feature/splash/presentation/view/widget/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  static const String routeName = "initialPage";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          MyCarView.routeName,
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}
