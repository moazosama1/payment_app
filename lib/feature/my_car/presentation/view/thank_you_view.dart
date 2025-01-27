import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_appBar.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);
  static const String routeName = "ThankYouView";
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        theme: theme,
        onTap: () => Navigator.pop(context),
      ),
      body: ThankYouBody(),
    );
  }
}
