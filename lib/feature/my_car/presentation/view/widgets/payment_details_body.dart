import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/feature/my_car/presentation/view/thank_you_view.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_credit_card.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/payment_method_list.dart';

class PaymentDetailsBody extends StatefulWidget {
  PaymentDetailsBody({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: PaymentMethodListView()),
          SliverToBoxAdapter(
              child: CustomCreditCard(
            autovalidateMode: widget.autovalidateMode,
            formKey: widget.formKey,
          )),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: CustomButton(
                  text: "Pay",
                  onTap: () {
                    if (widget.formKey.currentState!.validate()) {
                      widget.formKey.currentState!.save();
                      log("success");
                    } else {
                      Navigator.pushNamed(context, ThankYouView.routeName);
                      widget.autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
