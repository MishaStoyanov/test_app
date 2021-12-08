import 'package:flutter/material.dart';
import 'package:test_task/color_randomizer.dart';
import 'package:test_task/strings.dart';

void main() {
  runApp(
    MaterialApp(
        title: appName,
        home: const TestApp(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: Colors.lightGreen,
        ))),
  );
}

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  Color _buttonColor = getColor();

  void changeColor() {
    setState(() => _buttonColor = getColor());
  }

  void changeOnPreviousColor() {
    setState(() => _buttonColor = getPreviousColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(_buttonColor),
            ),
            child: Center(
                child: Text(heyThere,
                    style:
                        const TextStyle(color: Colors.black54, fontSize: 16))),
            onPressed: () => changeColor()),
        floatingActionButton: FloatingActionButton(
          onPressed: () => changeOnPreviousColor(),
          child: Text(previousColor),
        ));
  }
}
