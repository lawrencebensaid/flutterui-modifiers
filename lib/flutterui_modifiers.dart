library flutterui_modifiers;

import 'dart:ui';

import 'package:flutter/material.dart';

extension FlutterUITextModifiers on Text {
  /// A modifier that sets its Text's color.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Hello, World!')
  ///     .color(Colors.red);
  /// ```
  Text color(Color color) {
    return this.styling(color: color);
  }

  /// A modifier that sets its Text's font.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Hello, World!')
  ///     .font(size: 18);
  /// ```
  Text font({
    double? size,
    FontWeight? weight,
    FontStyle? style,
    String? family,
    List<String>? familyFallback,
  }) {
    return this.styling(
      fontSize: size,
      fontWeight: weight,
      fontStyle: style,
      fontFamily: family,
      fontFamilyFallback: familyFallback,
    );
  }

  /// Internal modifier for styling.
  Text styling({
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
    return Text(
      this.data ?? '',
      style: TextStyle(
        inherit: inherit ?? this.style?.inherit ?? true,
        color: color ?? this.style?.color,
        backgroundColor: backgroundColor ?? this.style?.backgroundColor,
        fontSize: fontSize ?? this.style?.fontSize,
        fontWeight: fontWeight ?? this.style?.fontWeight,
        fontStyle: fontStyle ?? this.style?.fontStyle,
        letterSpacing: letterSpacing ?? this.style?.letterSpacing,
        wordSpacing: wordSpacing ?? this.style?.wordSpacing,
        textBaseline: textBaseline ?? this.style?.textBaseline,
        height: height ?? this.style?.height,
        leadingDistribution:
            leadingDistribution ?? this.style?.leadingDistribution,
        locale: locale ?? this.style?.locale,
        foreground: foreground ?? this.style?.foreground,
        background: background ?? this.style?.background,
        shadows: shadows ?? this.style?.shadows,
        fontFeatures: fontFeatures ?? this.style?.fontFeatures,
        decoration: decoration ?? this.style?.decoration,
        decorationColor: decorationColor ?? this.style?.decorationColor,
        decorationStyle: decorationStyle ?? this.style?.decorationStyle,
        decorationThickness:
            decorationThickness ?? this.style?.decorationThickness,
        debugLabel: debugLabel ?? this.style?.debugLabel,
        fontFamily: fontFamily ?? this.style?.fontFamily,
        fontFamilyFallback:
            fontFamilyFallback ?? this.style?.fontFamilyFallback,
      ),
    );
  }
}

extension FlutterUIButtonModifiers on Button {
  /// A modifier that sets its Button's onLongPress handler.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Button(child: Text("Tap me for long"))
  ///     .onLongPress(() => print("Tapped!"));
  /// ```
  Button onLongPress(VoidCallback perform) {
    return Button(
      child: this.child,
      style: this.style,
      onPressed: this.onPressed,
      onLongPressed: perform,
    );
  }

  /// A modifier that sets its Button's onPress handler.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Button(child: Text("Tap me"))
  ///     .onPress(() => print("Tapped!"));
  /// ```
  Button onPress(VoidCallback perform) {
    return Button(
      child: this.child,
      style: this.style,
      onPressed: perform,
      onLongPressed: this.onLongPress,
    );
  }
}

extension FlutterUIModifiers on Widget {
  /// A modifier that aligns its widget within itself and optionally sizes itself
  /// based on the widget's size.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Hello, World!')
  ///     .align(Alignment.topRight);
  /// ```
  Widget align(Alignment alignment) {
    return Align(child: this, alignment: alignment);
  }

  /// A modifier that attempts to size the widget to a specific aspect ratio.
  Widget aspectRatio(double ratio) {
    return AspectRatio(child: this, aspectRatio: ratio);
  }

  /// A modifier that assigns its widget to a given [List].
  ///
  /// ## Example:
  ///
  /// ```dart
  /// List<Widget> list = [];
  /// Text('Item 1')
  ///     .frame(width: 20, height: 10)
  ///     .padding()
  ///     .bind(list);
  /// Text('Item 2')
  ///     .frame(width: 20, height: 10)
  ///     .padding()
  ///     .bind(list);
  ///```
  Widget assign(List<Widget> list) {
    list.add(this);
    return this;
  }

  /// A modifier that aligns its widget within itself and optionally sizes itself
  /// based on the widget's size.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Item 1')
  ///     .centered()
  ///```
  Widget centered() {
    return Center(
      child: this,
    );
  }

  /// Clips the widget.
  Widget backgroundColor(Color? color) {
    return Container(child: this, color: color);
  }

  /// A modifier that clips its widget to an oval shape.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .clipOval();
  /// ```
  Widget clipOval({
    CustomClipper<Rect>? clipper,
    Clip behavior: Clip.antiAlias,
  }) {
    return ClipOval(child: this, clipper: clipper, clipBehavior: behavior);
  }

  /// A modifier that clips its widget to a path.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .clipPath();
  /// ```
  Widget clipPath({
    CustomClipper<Path>? clipper,
    Clip behavior: Clip.antiAlias,
  }) {
    return ClipPath(child: this, clipper: clipper, clipBehavior: behavior);
  }

  /// A modifier that clips its widget to a rectangular shape.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .clipRect();
  /// ```
  Widget clipRect({
    CustomClipper<Rect>? clipper,
    Clip behavior: Clip.hardEdge,
  }) {
    return ClipRect(child: this, clipper: clipper, clipBehavior: behavior);
  }

  /// A modifier that clips its widget's corners to the specified radius.
  ///
  /// ## Example
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .corner(12);
  /// ```
  Widget corner(double radius) {
    return Container(
      child: this,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
    );
  }

  /// A modifier that sets its widget's frame size.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .frame(width: 50, height: 25);
  /// ```
  Widget frame({
    double? width,
    double? height,
  }) {
    return SizedBox(
      child: this,
      width: width,
      height: height,
    );
  }

  /// A modifier that insets margin around its widget by the given value(s).
  ///
  /// ## Example:
  ///
  /// This snippet creates "Hello World!" [Text] inside a [Card] that has margin
  /// around it by sixteen pixels in each direction.
  ///
  /// ```dart
  /// Card(child:
  ///   Text('Hello World!')
  ///       .padding(all: 16),
  /// )
  /// ```
  Widget margin({
    double? all,
    double? top,
    double? bottom,
    double? leading,
    double? trailing,
    double? horizontal,
    double? vertical,
  }) {
    double _top = top ?? 0;
    double _bottom = bottom ?? 0;
    double _leading = leading ?? 0;
    double _trailing = trailing ?? 0;
    _top += all ?? 0;
    _bottom += all ?? 0;
    _leading += all ?? 0;
    _trailing += all ?? 0;
    _leading += horizontal ?? 0;
    _trailing += horizontal ?? 0;
    _top += vertical ?? 0;
    _bottom += vertical ?? 0;
    return Container(
      child: this,
      margin: EdgeInsets.only(
        left: _leading,
        top: _top,
        right: _trailing,
        bottom: _bottom,
      ),
    );
  }

  /// A modifier that insets its widget by the given padding.
  ///
  /// ## Example:
  ///
  /// This snippet creates "Hello World!" [Text] inside a [Card] that is indented
  /// by sixteen pixels in each direction.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/padding.png)
  ///
  /// ```dart
  /// Card(child:
  ///   Text('Hello World!')
  ///       .padding(all: 16),
  /// )
  /// ```
  Widget padding({
    double? all,
    double? top,
    double? bottom,
    double? leading,
    double? trailing,
    double? horizontal,
    double? vertical,
  }) {
    double _top = top ?? 0;
    double _bottom = bottom ?? 0;
    double _leading = leading ?? 0;
    double _trailing = trailing ?? 0;
    _top += all ?? 0;
    _bottom += all ?? 0;
    _leading += all ?? 0;
    _trailing += all ?? 0;
    _leading += horizontal ?? 0;
    _trailing += horizontal ?? 0;
    _top += vertical ?? 0;
    _bottom += vertical ?? 0;
    return Padding(
      child: this,
      padding: EdgeInsets.only(
        top: _top,
        bottom: _bottom,
        left: _leading,
        right: _trailing,
      ),
    );
  }

  /// A modifier that makes its widget (partially) transparent.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Do you see me?')
  ///     .opacity(0.5);
  /// ```
  Widget opacity(double opacity) {
    return Opacity(child: this, opacity: opacity);
  }

  /// Creates a modifier that transforms its widget using a rotation around the
  /// center.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('I am crooked?!')
  ///     .rotate(28);
  /// ```
  Transform rotate(double angle) {
    return Transform.rotate(child: this, angle: angle);
  }

  /// A modifier that scales its widget uniformly.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Minime')
  ///     .scale(0.5);
  /// ```
  Transform scale(
    double scale, {
    Offset? origin,
    AlignmentGeometry? alignment,
    bool transformHitTests = true,
  }) {
    return Transform.scale(
      child: this,
      scale: scale,
      origin: origin,
      transformHitTests: transformHitTests,
    );
  }

  /// A modifier that transforms its widget.
  Transform transform(
    Matrix4 transform, {
    Offset? origin,
    AlignmentGeometry? alignment,
    bool transformHitTests: true,
  }) {
    return Transform(
      child: this,
      transform: transform,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
    );
  }

  /// A modifier that translates its widget.
  Transform translate(Offset offset, {bool transformHitTests = true}) {
    return Transform.translate(
      child: this,
      offset: offset,
      transformHitTests: transformHitTests,
    );
  }
}

class Button extends TextButton {
  final Widget child;
  final ButtonStyle? style;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;

  Button({
    required this.child,
    this.style,
    this.onPressed,
    this.onLongPressed,
  }) : super(
          child: child,
          style: style,
          onPressed: onPressed ?? () {},
          onLongPress: onLongPressed,
        );
}
