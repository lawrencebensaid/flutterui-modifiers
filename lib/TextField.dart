import 'package:flutter/material.dart';

extension FlutterUIModifiersTextField on TextField {
  /// A modifier that sets its Text's style.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// TextField()
  ///     .style(TextStyle(color: Colors.blue));
  /// ```
  TextField style(TextStyle? style) {
    return this._rebase(style: style);
  }

  /// Internal modifier for modifying final properties.
  TextField _rebase({
    TextAlign? align,
    TextDirection? direction,
    TextStyle? style,
  }) {
    return TextField(
      key: this.key,
      textAlign: align ?? this.textAlign,
      textDirection: direction ?? this.textDirection,
      style: style ?? this.style,
    );
  }
}
