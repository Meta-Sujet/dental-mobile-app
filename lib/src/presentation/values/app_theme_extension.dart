import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.secondaryElement,
  });
  final Color? secondaryElement;
  @override
  CustomColors copyWith({
    Color? secondaryElement,
  }) {
    return CustomColors(
      secondaryElement: secondaryElement ?? this.secondaryElement,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      secondaryElement: Color.lerp(secondaryElement, other.secondaryElement, t),
    );
  }
}
