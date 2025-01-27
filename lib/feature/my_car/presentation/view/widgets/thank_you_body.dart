import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/image_path.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_check_mark.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_line_dashed.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_thank_you_card.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuaryHigth = MediaQuery.sizeOf(context).height;
    return Transform.translate(
      offset: Offset(0, -30),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomThankYouCard(),
            ThankYouCheckMark(),
            Positioned(
              bottom: mediaQuaryHigth * 0.2,
              right: -20,
              child: CircleAvatar(
                backgroundColor: theme.colorScheme.surface,
              ),
            ),
            Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: theme.colorScheme.surfaceBright,
                radius: 50,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: theme.colorScheme.secondary,
                  child: SvgPicture.asset(
                    ImagePath.checkMarkIcon,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: mediaQuaryHigth * 0.2 + 20,
              left: 13 + 20,
              right: 13 + 20,
              child: Row(
                  children: List.generate(
                25,
                (index) {
                  return ListOfDashedLine();
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
