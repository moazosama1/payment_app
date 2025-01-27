import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_appBar.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/payment_details_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);
  static const String routeName = "PaymentDetails";
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        theme: theme,
        text: "Payment Details",
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: PaymentDetailsBody(),
    );
  }
}
