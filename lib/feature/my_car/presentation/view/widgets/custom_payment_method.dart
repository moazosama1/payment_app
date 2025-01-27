import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/model/payment_method.dart';

class CustomPaymentMethod extends StatelessWidget {
  CustomPaymentMethod(
      {super.key, required this.paymentMethod, this.isActive = false});
  PaymentMethod paymentMethod;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      child: Container(
        width: 100,
        height: 55,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                    color: isActive
                        ? theme.colorScheme.secondary
                        : theme.colorScheme.outline)),
            shadows: [
              BoxShadow(
                blurRadius: 4,
                color: isActive
                    ? theme.colorScheme.secondary.withValues(alpha: 0.5)
                    : Colors.transparent,
                offset: Offset(0, 2),
                spreadRadius: 1,
              )
            ]),
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: SvgPicture.asset(
              paymentMethod.imagePath,
              fit: BoxFit.scaleDown,
              placeholderBuilder: (context) =>
                  const CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
