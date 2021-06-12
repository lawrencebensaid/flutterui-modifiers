# FlutterUI Modifiers

FlutterUI Modifiers is a collection of declarative widget modifiers to make your Flutter code shorter and linear.

Modern tools like Jetpack Compose and SwiftUI use modifiers to make code easy to write and understand.

**This package provides the best of both worlds: Flutter's platform independence, and SwiftUI's clean modifier syntax.**

## Installation

Add flutterui_modifiers as dependency to your pubspec file.

```
flutterui_modifiers:
```

## Why use modifiers?

We all know that Flutter is a powerful framework to build apps with.<br>But we also know that Flutter code can become hard to read due to all those nested widgets.

Tools like Google's Jetpack Compose and Apple's SwiftUI embrace the concept of modifiers.

Modifiers are functionality the same as Flutter widgets.<br>The difference is that, where Flutter code is nested, modifiers are linear.

This makes the code easyer to understand at a glance! 🎉

## Example

With FlutterUI Modifiers, write this:

```dart
List<Widget> list = [];

Text('Hello, World! 🌍')
    .font(size: 22)
    .color(Colors.red)
    .padding(all: 16)
    .centered()
    .assign(list);
```

Instead of this:

```dart
List<Widget> list = [];

list.add(
  Center(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Hello, World! 🌍',
        style: TextStyle(
          color: Colors.red,
          fontSize: 22,
        ), // TextStyle
      ), // Text
    ) // Padding
  ), // Center
);
```


## List of modifiers

All modifiers contain in-code comment documentation with examples.

Please note that some modifiers are specific to widgets like `Text()` or various Buttons and will not work on other widgets that don't support them.

|Status|Modifier|Widget(s)|
|-|-|-|
|✅|`align()`|*|
|✅|`aspectRatio()`|*|
|✅|`assign()`|*|
|✅|`centered()`|*|
|✅|`backgroundColor()`|*|
|✅|`clipOval()`|*|
|✅|`clipPath()`|*|
|✅|`clipRect()`|*|
|✅|`color()`|`Text`|
|✅|`font()`|`Text`|
|✅|`frame()`|*|
|✅|`margin()`|*|
|✅|`onLongPress()`|`Button`|
|✅|`onPress()`|`Button`|
|✅|`opacity()`|*|
|✅|`padding()`|*|
|✅|`rotate()`|*|
|✅|`scale()`|*|
|✅|`transform()`|*|
|✅|`translate()`|*|

|_|Legend|
|-|-|
|✅|implemented|
|❌|work in progress|
|*|supported on all widgets|