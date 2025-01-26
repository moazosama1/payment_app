import 'package:flutter/material.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/my_car_body.dart';

class MyCarView extends StatelessWidget {
 MyCarView({ Key? key }) : super(key: key);
  static const String routeName = "MyCarView";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: MyCarBody(),
    );
  }
}