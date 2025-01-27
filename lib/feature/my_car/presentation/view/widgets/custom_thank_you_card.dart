import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/image_path.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_master_card.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_paid.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/payment_info.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/total_price.dart';

class CustomThankYouCard extends StatelessWidget {
  const CustomThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuaryHigth = MediaQuery.sizeOf(context).height;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: theme.colorScheme.surfaceBright,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 30 + 20, left: 20, right: 20),
        child: Column(
          children: [
            Text(
              "Thank you!",
              style: theme.textTheme.titleLarge,
            ),
            Text(
              "Your transaction was successful",
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomPayementInfo(
              title: "Date",
              value: "01/24/2023",
            ),
            const SizedBox(
              height: 15,
            ),
            CustomPayementInfo(
              title: "Time",
              value: "10:15 AM",
            ),
            const SizedBox(
              height: 15,
            ),
            CustomPayementInfo(
              title: "To",
              value: "Sam Louis",
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: theme.colorScheme.outline.withValues(alpha: 0.4),
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            TotalPrice(kkey: "Total", value: r"$50.97"),
            const SizedBox(
              height: 20,
            ),
            CustomMasterCard(),
            Spacer(),
            CustomPaid(),
            SizedBox(
              height: mediaQuaryHigth * .2 / 2 - 25,
            )
          ],
        ),
      ),
    );
  }
}
