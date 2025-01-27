import 'package:flutter/material.dart';

class CustomPayementInfo extends StatelessWidget {
  const CustomPayementInfo({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              theme.textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(value, style: theme.textTheme.labelSmall),
      ],
    );
  }
}
