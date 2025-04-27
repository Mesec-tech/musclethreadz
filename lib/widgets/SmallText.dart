import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  int? maxLines; // Optional: Begrenzung der Zeilenanzahl

  SmallText({
    super.key,
    this.color = const Color.fromARGB(255, 0, 0, 0),
    required this.text,
    this.size = 16,
    this.height = 1.2,
    this.maxLines, // Standardmäßig unbegrenzt, wenn nicht angegeben
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines, // Begrenzung optional
      overflow: maxLines != null
          ? TextOverflow.ellipsis
          : TextOverflow.visible, // Ellipsis nur bei Begrenzung
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height,
      ),
      softWrap: true, // Automatischer Zeilenumbruch
    );
  }
}
