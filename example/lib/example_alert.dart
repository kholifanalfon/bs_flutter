import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class ExampleAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BsRow(
      gutter: EdgeInsets.only(left: 10.0, right: 10.0),
      children: [
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            child: Text('Alert Primary'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.secondary,
            child: Text('Alert Secondary'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.success,
            child: Text('Alert Success'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.danger,
            child: Text('Alert Danger'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.warning,
            child: Text('Alert Warning'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.info,
            child: Text('Alert Info'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.light,
            child: Text('Alert Light'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_4),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.dark,
            child: Text('Alert Dark'),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen.all(Col.col_12),
          child: BsAlert(
            closeButton: true,
            margin: EdgeInsets.only(bottom: 10.0),
            style: BsAlertStyle.success,
            heading: Text('Hello World'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Alert Dark'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
