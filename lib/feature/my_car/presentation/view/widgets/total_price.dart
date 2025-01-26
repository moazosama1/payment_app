import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
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
          style: theme.textTheme.labelLarge,
        ),
        const Spacer(),
        Text(
          value,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
