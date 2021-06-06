import 'package:bs_flutter/bs_flutter.dart';
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
              Container(
                child: Container(
                  child: BsRow(
                    gutter: EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                    children: [
                      BsCol(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.all(20.0),
                        sizes: ColSize.all(Col.col_12),
                        child: Center(child: Text('col-12')),
                      ),
                      BsCol(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.all(20.0),
                        sizes: ColSize(
                            sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
                        order: ColOrder(md: 1),
                        child: Center(
                            child: Text(
                                'col-sm-12 col-md-12 col-md-6 col-order-lg-1')),
                      ),
                      BsCol(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        sizes: ColSize(md: Col.col_6),
                        child: BsRow(
                          children: [
                            BsCol(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              padding: EdgeInsets.all(10.0),
                              sizes: ColSize(md: Col.col_4),
                              child: Center(child: Text('Nested col-md-4')),
                            ),
                            BsCol(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              padding: EdgeInsets.all(10.0),
                              sizes: ColSize(md: Col.col_4),
                              offset: ColSize(lg: Col.col_4),
                              child: Center(
                                  child:
                                      Text('Nested col-md-4 col-offset-lg-4')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
