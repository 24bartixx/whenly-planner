import 'package:flutter/material.dart';
import 'package:whenly_planner/theme/custom_colors.dart';

abstract class CustomAbstractTextStyle extends TextStyle {
  const CustomAbstractTextStyle({super.fontSize, super.fontWeight, super.color})
    : super(fontFamily: "Montserrat");
}

class DarkTextStyle extends CustomAbstractTextStyle {
  const DarkTextStyle({super.fontSize, super.fontWeight})
    : super(color: CustomColors.darkSand);
}

class NormalDarkTextStyle extends DarkTextStyle {
  const NormalDarkTextStyle({super.fontSize})
    : super(fontWeight: FontWeight.w400);
}

class SemiBoldDarkTextStyle extends DarkTextStyle {
  const SemiBoldDarkTextStyle({super.fontSize})
    : super(fontWeight: FontWeight.w600);
}

class BoldDarkTextStyle extends DarkTextStyle {
  const BoldDarkTextStyle({super.fontSize})
    : super(fontWeight: FontWeight.bold);
}

class LightTextStyle extends CustomAbstractTextStyle {
  const LightTextStyle({super.fontSize, super.fontWeight})
    : super(color: CustomColors.lightMist);
}

class NormalLightTextStyle extends LightTextStyle {
  const NormalLightTextStyle({super.fontSize})
    : super(fontWeight: FontWeight.w400);
}

class SemiBoldLightTextStyle extends LightTextStyle {
  const SemiBoldLightTextStyle({super.fontSize})
    : super(fontWeight: FontWeight.w600);
}

class BoldLightTextStyle extends LightTextStyle {
  const BoldLightTextStyle({super.fontSize})
    : super(fontWeight: FontWeight.bold);
}
