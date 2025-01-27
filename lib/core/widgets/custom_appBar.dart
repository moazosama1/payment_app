import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/image_path.dart';

AppBar CustomAppBar(
    {required ThemeData theme, String? text, required void Function()? onTap}) {
  return AppBar(
    leading: Center(
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          ImagePath.arrowIcon,
          width: 24,
        ),
      ),
    ),
    title: Text(
      text ?? "",
      style: theme.textTheme.titleLarge,
    ),
    centerTitle: true,
  );
}
