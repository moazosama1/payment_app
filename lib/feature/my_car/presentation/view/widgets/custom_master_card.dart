import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/image_path.dart';

class CustomMasterCard extends StatelessWidget {
  const CustomMasterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Row(
          children: [
            SvgPicture.asset(ImagePath.masterCardIcon),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Credit Card",
                  style: theme.textTheme.labelSmall,
                ),
                Text(
                  "Mastercard",
                  style: theme.textTheme.labelSmall!
                      .copyWith(color: theme.colorScheme.outline, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
