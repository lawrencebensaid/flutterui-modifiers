import 'package:flutter/material.dart';

extension FlutterUIModifiersIcon on Icon {
  /// A modifier that sets its Icon's color.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .color(Colors.red);
  /// ```
  Icon color(Color? color) {
    return _rebase(color: color);
  }

  /// A modifier that overrides its Icon's layout direction.
  ///
  /// If set to `TextDirection.rtl` the leading side will be right instead of left.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .direction(TextDirection.rtl);
  /// ```
  Icon direction(TextDirection? direction) {
    return _rebase(textDirection: direction);
  }

  /// A modifier that sets its Icon's size.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .font(size: 28);
  /// ```
  Icon font({double? size}) {
    return _rebase(size: size);
  }

  /// A modifier that sets its Icon's semantic label.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// Icon(Icons.person)
  ///     .semantic(label: 'My account');
  /// ```
  Icon semantic({String? label}) {
    return _rebase(semanticLabel: label);
  }

  /// Internal modifier for modifying final properties.
  Icon _rebase({
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) {
    return Icon(
      this.icon,
      key: this.key,
      size: size ?? this.size,
      color: color ?? this.color,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      textDirection: textDirection ?? this.textDirection,
    );
  }
}
