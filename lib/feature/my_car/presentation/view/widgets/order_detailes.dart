import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
    required this.kkey,
    required this.value,
  });

  final String kkey, value;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Text(
          kkey,
          style: theme.textTheme.labelSmall,
        ),
        const Spacer(),
        Text(
          value,
          style: theme.textTheme.labelSmall,
        ),
      ],
    );
  }
}
