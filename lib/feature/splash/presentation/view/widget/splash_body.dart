import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/color_app.dart';
import 'package:payment_app/core/utils/image_path.dart';

class SplashBody extends StatelessWidget {
  SplashBody({Key? key}) : super(key: key);

  ColorApp colorApp = ColorApp();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage(ImagePath.logoImage),
          height: 230,
          width: 230,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Payment",
              style: TextStyle(
                  color: ColorApp.shadeBlueColor,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              " App",
              style: TextStyle(
                  color: ColorApp.shadeGreenColor,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800),
            ),
          ],
        )
      ],
    );
  }
}
