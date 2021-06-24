# FlutterUI Modifiers

FlutterUI Modifiers is a collection of declarative widget modifiers to make your Flutter code shorter and linear.

Modern tools like Jetpack Compose and SwiftUI use view modifiers to make code easy to write and understand.

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

Text('Hello, World!') //
    .bold()
    .font(size: 22)
    .help('We love you 🌍')
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
      child: Tooltip(
        message: 'We love you 🌍',
        child: Text(
          'Hello, World!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ), // TextStyle
        ), // Text
      ), // Tooltip
    ) // Padding
  ), // Center
);
```


## List of modifiers

All view modifiers contain in-code comment documentation with examples.

Please note that some view modifiers are specific to widgets like `Text()` or various Buttons and will not work on other widgets that don't support them.

|Status|Modifier|Widget(s)|
|-|-|-|
|🟢|`.align()`|*|
|🟢|`.aspectRatio()`|*|
|🟢|`.assign()`|*|
|🟢|`.centered()`|*|
|🔴|`.controlSize()`|`Button`, `TextField`|
|🟠|`.background()`|*|
|🟡|`.backgroundColor()`|*|
|🟢|`.bold()`|`Text`|
|🟠|`.border()`|*|
|🟡|`.clipOval()`|*|
|🟡|`.clipPath()`|*|
|🟡|`.clipRect()`|*|
|🟠|`.clip()`|*|
|🟢|`.color()`|`Text`|
|🟢|`.corner()`|*|
|🟢|`.direction()`|`Icon`, `Text`|
|🟢|`.disabled()`|`Button`|
|🟡|`.flex()`|*|
|🟢|`.font()`|`Icon`, `Text`|
|🟢|`.frame()`|*|
|🟢|`.help()`|*|
|🟡|`.hideThumb()`|`ListView`|
|🟢|`.margin()`|*|
|🟢|`.multilineTextAlignment()`|`Text`|
|🟢|`.offset()`|*|
|🟠|`.onDrag()`|*|
|🟠|`.onDrop()`|*|
|🟠|`.onDoubleTap()`|*|
|🟢|`.onHover()`|*|
|🟡|`.onLongTap()`|`Button`|
|🟡|`.onTap()`|`Button`|
|🟢|`.opacity()`|*|
|🟠|`.overlay()`|*|
|🟢|`.padding()`|*|
|🔴|`.popover()`|*|
|🟢|`.rotate()`|*|
|🟡|`.scale()`|*|
|🟢|`.semantic()`|`Icon`|
|🟢|`.shadow()`|*|
|🔴|`.sheet()`|*|
|🟡|`.style()`|`Text`, `TextField`|
|🟡|`.transform()`|*|

|_|Legend|
|-|-|
|🟢|*Implemented*|
|🟡|*Implemented, but subject to change*|
|🟠|*Work in progress*|
|🔴|*Not yet implemented*|
|* |*Available on all types*|


## Technical notes

View modifiers work by telling the widget to wrap itself in another widget and then returning itself to the caller.

### Modifier chain

A modifier chain is a sequence of modifiers on a view.

### Type handover

Type handover is the technique of not wrapping widgets of the same class in each other if they are subsequent to each other.

So if the modifier chain looks like this:

`[ Center > Container > Container > Container > Text > Text ]`

FlutterUI will render the view hierarch like this:

`[ Center > Container > Text ]`

This makes sure that the view hierarchy doesn't become more complex than necessary.