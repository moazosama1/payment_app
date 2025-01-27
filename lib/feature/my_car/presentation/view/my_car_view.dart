import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/image_path.dart';
import 'package:payment_app/core/widgets/custom_appBar.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/my_car_body.dart';

class MyCarView extends StatelessWidget {
  MyCarView({Key? key}) : super(key: key);
  static const String routeName = "MyCarView";
  ImagePath imagePath = ImagePath();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(theme: theme, onTap: () {}, text: "My Car"),
      body: MyCarBody(),
    );
  }
}
