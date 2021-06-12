# FlutterUI Modifiers - Example

When writing an app in Flutter, your widget hierarchy might look something like this:

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

With the `flutterui_modifiers` package installed you could transform the above code to a modifier-style equivalent which might look something like this:

```dart
List<Widget> list = [];

Text('Hello, World! 🌍')
    .font(size: 22)
    .color(Colors.red)
    .padding(all: 16)
    .centered()
    .assign(list);
```

More examples like this can be found in the in-code documentation.