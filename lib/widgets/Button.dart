import 'package:flutter/material.dart';
import 'package:musclethreadz/utils/Dimensions.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? TextColor;
  final IconData icon;
  final Color? IconColor;
  final double IconSize;
  final Color? backgroundColor;
  final void Function()? onTap;

  const Button({
    super.key,
    required this.text,
    this.TextColor = const Color(0xFF332d2b),
    required this.icon,
    this.IconColor = const Color(0xFF332d2b),
    this.backgroundColor = const Color.fromARGB(255, 114, 112, 109),
    this.IconSize = 16,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Dimensions.height15),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(Dimensions.radius20 * 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // button text
            Text(
              text,
              style: TextStyle(
                fontSize: Dimensions.font20,
                color: TextColor,
              ),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),

            // icon
            Icon(icon, color: IconColor, size: IconSize),
          ],
        ),
      ),
    );
  }
}
