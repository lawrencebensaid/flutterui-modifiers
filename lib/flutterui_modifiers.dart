library flutterui_modifiers;

import 'package:flutter/material.dart';

export 'Button.dart';
export 'Icon.dart';
export 'Text.dart';
export 'TextField.dart';

/// Contains the modifier members of the [Widget] class.
///
/// The reason that [FlutterUIModifiersWidget] resides inside this file is
/// because it depends on the `_rebase()` method of
/// [FlutterUIModifiersContainer] which is fileprivate.
extension FlutterUIModifiersWidget on Widget {
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

  /// A modifier that sets its widget's backgruond color
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Black text')
  ///     .backgroundColor(Colors.white)
  ///```
  Widget backgroundColor(Color? color) {
    if (this is Container) {
      return (this as Container).backgroundColor(color);
    }
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
    return ClipRRect(child: this, borderRadius: BorderRadius.circular(radius));
  }

  /// A modifier that sets its widget's frame size.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .frame(width: 50, height: 25);
  /// ```
  Widget frame({double? width, double? height}) {
    if (this is Container) {
      return (this as Container).frame(width: width, height: height);
    }
    return Container(child: this, width: width, height: height);
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
    final insets = EdgeInsets.only(
      top: _top,
      bottom: _bottom,
      left: _leading,
      right: _trailing,
    );
    if (this is Container) {
      return (this as Container)._rebase(margin: insets);
    }
    return Container(child: this, margin: insets);
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
    final insets = EdgeInsets.only(
      top: _top,
      bottom: _bottom,
      left: _leading,
      right: _trailing,
    );
    if (this is Container) {
      return (this as Container)._rebase(padding: insets);
    }
    return Padding(child: this, padding: insets);
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

/// Contains the modifier members of the [Container] class.
///
/// The reason that [FlutterUIModifiersContainer] resides inside this file is
/// because it provides the `_rebase()` method of which is fileprivate.
extension FlutterUIModifiersContainer on Container {
  /// A modifier that sets its widget's background color
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Text('Black text')
  ///     .backgroundColor(Colors.white)
  ///```
  Container backgroundColor(Color? color) {
    return _rebase(color: color);
  }

  /// A modifier that clips its widget's corners to the specified radius.
  ///
  /// ## Example
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .corner(12);
  /// ```
  Container decorate(Decoration? decoration) {
    return _rebase(decoration: decoration);
  }

  /// A modifier that sets its widget's frame size.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .frame(width: 50, height: 25);
  /// ```
  Container frame({double? width, double? height}) {
    return _rebase(width: width, height: height);
  }

  /// Internal modifier for modifying final properties.
  Container _rebase({
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip? clipBehavior,
  }) {
    return Container(
      key: this.key,
      alignment: alignment ?? this.alignment,
      padding: padding ?? this.padding,
      color: color ?? this.color,
      decoration: decoration ?? this.decoration,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints ?? this.constraints,
      margin: margin ?? this.margin,
      transform: transform ?? this.transform,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      child: this.child,
      clipBehavior: clipBehavior ?? this.clipBehavior,
    );
  }
}
