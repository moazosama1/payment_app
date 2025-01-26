import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/color_app.dart';
import 'package:payment_app/core/utils/image_path.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/appBar.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/order_detailes.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/total_price.dart';

class MyCarBody extends StatelessWidget {
  MyCarBody({Key? key}) : super(key: key);
  ImagePath imagePath = ImagePath();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar(text: "My Car"),
          SizedBox(
            width: double.infinity,
            height: 25,
          ),
          Image.asset(ImagePath.basketImage),
          SizedBox(
            height: 25,
          ),
          OrderDetails(
            kkey: "Order Subtotal",
            value: r"$42.97",
          ),
          SizedBox(
            height: 3,
          ),
          OrderDetails(
            kkey: "Discount",
            value: r"$0",
          ),
          SizedBox(
            height: 3,
          ),
          OrderDetails(
            kkey: "Shipping",
            value: r"$8.0",
          ),
          Divider(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            endIndent: 10,
            indent: 10,
            height: 34,
          ),
          TotalPrice(kkey: "Total", value: r"$50.97"),
          SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {},
            text: "Complete Payment",
          )
        ],
      ),
    );
  }
}

