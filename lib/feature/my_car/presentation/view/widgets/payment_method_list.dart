import 'package:flutter/material.dart';
import 'package:payment_app/core/model/payment_method.dart';
import 'package:payment_app/feature/my_car/presentation/view/widgets/custom_payment_method.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({Key? key}) : super(key: key);

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: CustomPaymentMethod(
              paymentMethod: PaymentMethod.paymentMethodList[index],
              isActive: activeIndex == index,
            ),
          );
        },
        itemCount: PaymentMethod.paymentMethodList.length,
      ),
    );
  }
}
