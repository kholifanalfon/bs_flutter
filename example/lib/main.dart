import 'package:bs_flutter/bs_flutter.dart';
import 'package:bs_flutter_example/example_alert.dart';
import 'package:bs_flutter_example/example_badge.dart';
import 'package:bs_flutter_example/example_buttons.dart';
import 'package:bs_flutter_example/example_grid.dart';
import 'package:bs_flutter_example/example_inputtext.dart';
import 'package:bs_flutter_example/example_modal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollbar(
          child: SingleChildScrollView(
          child: Column(
            children: [
              BsNavbar(
                margin: EdgeInsets.only(bottom: 20.0),
                brand: BsNavBrand(
                  onPressed: () {},
                  child: Container(
                    child: Text('Brand'),
                  ),
                ),
              ),
              ExampleGrid(),
              ExampleButtons(),
              ExampleBadge(),
              ExampleInputText(),
              ExampleAlert(),
              ExampleModal(),
            ],
          ),
        )),
      ),
    );
  }
}