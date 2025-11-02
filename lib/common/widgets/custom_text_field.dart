import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/theme/app_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, required this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        filled: true,
        fillColor: context.colorTheme.surfaceContainerLowest,
        suffixIcon: icon != null
            ? Icon(icon, color: context.colorTheme.onSurface)
            : null,
        prefixText: "  ",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadiuses.large),
        ),
      ),
    );
  }
}
