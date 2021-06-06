import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';

class ExampleInputText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BsRow(
      gutter: EdgeInsets.only(left: 10.0, right: 10.0),
      children: [
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_2),
          child: BsInput(
            size: BsInputSize.sm,
            hintText: 'Small input',
            controller: TextEditingController(),
            validators: [
              BsValidator.required
            ],
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_2),
          child: BsInput(
            size: BsInputSize.md,
            hintTextLabel: 'Medium input',
            controller: TextEditingController(),
            validators: [
              BsValidator.required
            ],
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_2),
          child: BsInput(
            size: BsInputSize.lg,
            obscureText: true,
            hintTextLabel: 'Large input',
            controller: TextEditingController(),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_2),
          child: BsInput(
            style: BsInputStyle.outlineBottom,
            size: BsInputSize.outlineBottomSm,
            hintTextLabel: 'Small input',
            controller: TextEditingController(),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_2),
          child: BsInput(
            style: BsInputStyle.outlineBottom,
            size: BsInputSize.outlineBottomMd,
            hintTextLabel: 'Medium input',
            controller: TextEditingController(),
          ),
        ),
        BsCol(
          margin: EdgeInsets.only(bottom: 10.0),
          sizes: ColScreen(md: Col.col_2),
          child: BsInput(
            style: BsInputStyle.outlineBottom,
            size: BsInputSize.outlineBottomLg,
            hintTextLabel: 'Large input',
            maxLines: 5,
            controller: TextEditingController(),
            validators: [
              BsValidator.required
            ],
          ),
        ),
      ],
    );
  }
  
}