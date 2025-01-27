import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/image_path.dart';

class CustomPaid extends StatelessWidget {
  const CustomPaid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(ImagePath.qrCodeIcon),
        Container(
          height: 55,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: theme.colorScheme.secondary, width: 2),
          ),
          child: Center(
            child: Text(
              "PAID",
              style: theme.textTheme.labelLarge!
                  .copyWith(color: theme.colorScheme.secondary),
            ),
          ),
        )
      ],
    );
  }
}
