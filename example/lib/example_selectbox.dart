import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExampleSelectBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExampleSelectBoxState();
  }
}

class _ExampleSelectBoxState extends State<ExampleSelectBox> {

  GlobalKey<FormState> _formState = GlobalKey<FormState>();

  BsSelectBoxController _select1 = BsSelectBoxController(options: [
    BsSelectBoxOption(value: 1, text: Text('1')),
    BsSelectBoxOption(value: 2, text: Text('2')),
    BsSelectBoxOption(value: 3, text: Text('3')),
  ]);

  BsSelectBoxController _select4 = BsSelectBoxController(options: [
    BsSelectBoxOption(value: 1, text: Text('1')),
    BsSelectBoxOption(value: 2, text: Text('2')),
    BsSelectBoxOption(value: 3, text: Text('3')),
  ]);

  BsSelectBoxController _select2 = BsSelectBoxController(multiple: true, options: [
    BsSelectBoxOption(value: 1, text: Text('1')),
    BsSelectBoxOption(value: 2, text: Text('2')),
    BsSelectBoxOption(value: 3, text: Text('3')),
    BsSelectBoxOption(value: 4, text: Text('4')),
    BsSelectBoxOption(value: 5, text: Text('5')),
    BsSelectBoxOption(value: 6, text: Text('6')),
  ]);
  BsSelectBoxController _select3 = BsSelectBoxController();

  Future<BsSelectBoxResponse> selectApi(Map<String, String> params) async {
    Uri url = Uri.http('localhost', 'api-json.php', params);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      return BsSelectBoxResponse.createFromJson(json);
    }

    return BsSelectBoxResponse(options: []);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 20.0),
      child: Form(
        key: _formState,
        child: BsCard(
          children: [
            BsCardContainer(title: Text('Select Box')),
            BsCardContainer(child: BsRow(
              crossAxisAlignment: WrapCrossAlignment.center,
              gutter: EdgeInsets.only(left: 10.0, right: 10.0),
              children: [
                BsCol(
                  sizes: ColScreen(sm: Col.col_2),
                  child: BsSelectBox(
                    hintText: 'Pilih salah satu',
                    selectBoxController: _select1,
                    validators: [
                      BsSelectValidators.required
                    ],
                  ),
                ),
                BsCol(
                  sizes: ColScreen(sm: Col.col_2),
                  child: BsSelectBox(
                    hintTextLabel: 'Pilih salah satu',
                    selectBoxController: _select4,
                  ),
                ),
                BsCol(
                  sizes: ColScreen(sm: Col.col_2),
                  child: BsSelectBox(
                    hintText: 'Pilih multiple',
                    selectBoxController: _select2,
                  ),
                ),
                BsCol(
                  sizes: ColScreen(sm: Col.col_2),
                  child: BsSelectBox(
                    searchable: true,
                    disabled: true,
                    hintText: 'Pilih salah satu',
                    selectBoxController: _select2,
                  ),
                ),
                BsCol(
                  sizes: ColScreen(sm: Col.col_2),
                  child: BsSelectBox(
                    hintText: 'Pilih salah satu',
                    searchable: true,
                    selectBoxController: _select3,
                    serverSide: selectApi,
                  ),
                ),
                BsCol(
                  sizes: ColScreen(sm: Col.col_2),
                  child: BsButton(
                    label: Text('Validate'),
                    prefixIcon: Icons.open_in_new,
                    style: BsButtonStyle.primary,
                    onPressed: () {
                      _formState.currentState!.validate();
                    },
                  )
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
