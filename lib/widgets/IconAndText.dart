import 'package:flutter/material.dart';
import 'package:musclethreadz/utils/Dimensions.dart';
import 'package:musclethreadz/widgets/SmallText.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? TextColor;
  final Color iconColor;

  const IconAndText({
    super.key,
    required this.icon,
    required this.text,
    this.TextColor = const Color(0xFF332d2b),
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        SizedBox(
          width: Dimensions.width5,
        ),
        SmallText(
          text: text,
          color: TextColor,
          size: Dimensions.font12 * 1.2,
        )
      ],
    );
  }
}
