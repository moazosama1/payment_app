import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  CustomCreditCard({
    required this.formKey,
    required this.autovalidateMode,
    super.key,
  });

 GlobalKey<FormState> formKey;
 AutovalidateMode autovalidateMode ;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = "", expiryDate = "", cardHolderName = "", cvvCode = "";

  bool showBackView = false;


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          height: 190,
          width: double.infinity,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            autovalidateMode: widget.autovalidateMode,
            inputConfiguration: InputConfiguration(
              cardHolderTextStyle: theme.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w600),
              cardNumberTextStyle: theme.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w600),
              cvvCodeTextStyle: theme.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w600),
              expiryDateTextStyle: theme.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            onCreditCardModelChange: (CreditCardModel) {
              cardNumber = CreditCardModel.cardNumber;
              cardHolderName = CreditCardModel.cardHolderName;
              cvvCode = CreditCardModel.cvvCode;
              showBackView = CreditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey,)
      ],
    );
  }
}
