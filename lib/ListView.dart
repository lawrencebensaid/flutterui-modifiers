import 'package:flutter/material.dart';

extension FlutterUIModifiersListView on ListView {
  /// A modifier that sets its Text's style.
  ///
  /// ## Example:
  ///
  /// ```dart
  /// ListView(children: items)
  ///     .hideThumb();
  /// ```
  Widget hideThumb(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: this,
    );
  }
}
