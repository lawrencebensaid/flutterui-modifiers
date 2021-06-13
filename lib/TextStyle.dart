import 'dart:ui';

import 'package:flutter/material.dart';

/// FlutterUITextStyle is a helper extension.
///
/// Note: This class actually belongs to the FlutterUI package.
extension FlutterUITextStyle on TextStyle {
  /// Method for modifying final properties.
  static TextStyle rebase(
    TextStyle? style, {
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
  }) {
    return TextStyle(
      inherit: inherit ?? style?.inherit ?? true,
      color: color ?? style?.color,
      backgroundColor: backgroundColor ?? style?.backgroundColor,
      fontSize: fontSize ?? style?.fontSize,
      fontWeight: fontWeight ?? style?.fontWeight,
      fontStyle: fontStyle ?? style?.fontStyle,
      letterSpacing: letterSpacing ?? style?.letterSpacing,
      wordSpacing: wordSpacing ?? style?.wordSpacing,
      textBaseline: textBaseline ?? style?.textBaseline,
      height: height ?? style?.height,
      leadingDistribution: leadingDistribution ?? style?.leadingDistribution,
      locale: locale ?? style?.locale,
      foreground: foreground ?? style?.foreground,
      background: background ?? style?.background,
      shadows: shadows ?? style?.shadows,
      fontFeatures: fontFeatures ?? style?.fontFeatures,
      decoration: decoration ?? style?.decoration,
      decorationColor: decorationColor ?? style?.decorationColor,
      decorationStyle: decorationStyle ?? style?.decorationStyle,
      decorationThickness: decorationThickness ?? style?.decorationThickness,
      debugLabel: debugLabel ?? style?.debugLabel,
      fontFamily: fontFamily ?? style?.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? style?.fontFamilyFallback,
    );
  }
}
