import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/payment_method_list.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: "Continue",
            onTap: () {},
          )
        ],
      ),
    );
  }
}