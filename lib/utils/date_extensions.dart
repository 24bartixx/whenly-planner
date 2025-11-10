import 'package:flutter/widgets.dart';

extension DateX on DateTime {
  TextSpan toTileText({TextStyle? dateStyle, TextStyle? timeStyle}) {
    final date =
        "${year.toString()}-${month.toString().padLeft(2, "0")}-${day.toString().padLeft(2, "0")}";
    final time = "${hour.toString()}:${minute.toString().padLeft(2, "0")}";
    return TextSpan(
      children: [
        TextSpan(
          text: "$date\n",
          style:
              dateStyle?.copyWith(fontWeight: FontWeight.w600) ??
              const TextStyle(fontWeight: FontWeight.w600),
        ),
        TextSpan(text: time, style: timeStyle),
      ],
    );
  }
}
