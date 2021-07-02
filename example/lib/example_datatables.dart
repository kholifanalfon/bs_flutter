import 'dart:convert';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleSource extends BsDatatableSource {

  ValueChanged<dynamic> onEditListener = (value) {};
  ValueChanged<dynamic> onDeleteListener = (value) {};

  static List<BsDataColumn> get columns => <BsDataColumn>[
    BsDataColumn(label: Text('No'), orderable: false, searchable: false, width: 100.0),
    BsDataColumn(label: Text('Code'), columnName: 'typecd', width: 200.0),
    BsDataColumn(label: Text('Name'), columnName: 'typenm'),
    BsDataColumn(label: Text('Aksi'), orderable: false, searchable: false, width: 200.0),
  ];

  @override
  BsDataRow getRow(int index) {
    return BsDataRow(index: index, cells: <BsDataCell>[
      BsDataCell(Text('${controller.start + index + 1}')),
      BsDataCell(Text('${response.data[index]['typecd']}')),
      BsDataCell(Text('${response.data[index]['typenm']}')),
      BsDataCell(Row(
        children: [
          BsButton(
            margin: EdgeInsets.only(right: 5.0),
            onPressed: () => onEditListener(response.data[index]['typecd']),
            prefixIcon: Icons.edit,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.primary,
          ),
          BsButton(
            onPressed: () => onEditListener(response.data[index]['typecd']),
            prefixIcon: Icons.delete,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.danger,
          )
        ],
      ))
    ]);
  }
}

class ExampleDatatables extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExampleDatatablesState();
  }
}

class _ExampleDatatablesState extends State<ExampleDatatables> {
  ExampleSource _source = ExampleSource();

  @override
  void initState() {
    _source.controller = BsDatatableController();
    super.initState();
  }

  Future loadApi(Map<String, dynamic> params) {
    return http.post(
      Uri.parse('http://localhost/flutter_crud/api/public/types/datatables'),
      body: params,
    ).then((value) {
      Map<String, dynamic> json = jsonDecode(value.body);
      setState(() {
        _source.response = BsDatatableResponse.createFromJson(json['data']);
        _source.onEditListener = (typeid) {
          _source.controller.reload();
        };
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 20.0),
      child: BsCard(
        children: [
          BsCardContainer(title: Text('Datatables')),
          BsCardContainer(child: BsDatatable(
            source: _source,
            title: Text('Datatables Data'),
            columns: ExampleSource.columns,
            pagination: BsPagination.input,
            language: BsDatatableLanguage(
                nextPagination: 'Next',
                previousPagination: 'Previous',
                information: 'Show __START__ to __END__ of __FILTERED__ entries',
                informationFiltered: 'filtered from __DATA__ total entries',
                firstPagination: 'First Page',
                lastPagination: 'Last Page',
                hintTextSearch: 'Search data ...',
                perPageLabel: 'Page Length',
                searchLabel: 'Search Form'
            ),
            serverSide: loadApi,
          ))
        ],
      ),
    );
  }
}
