
import 'package:flutter/material.dart';

class ThankYouCheckMark extends StatelessWidget {
  const ThankYouCheckMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
        var mediaQuaryHigth = MediaQuery.sizeOf(context).height;
    return Positioned(
      bottom: mediaQuaryHigth * 0.2,
      left: -20,
      child: CircleAvatar(
        backgroundColor: theme.colorScheme.surface,
      ),
    );
  }
}

