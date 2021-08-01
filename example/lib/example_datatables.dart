import 'dart:convert';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:bs_flutter_datatable/bs_flutter_datatable.dart';

class ExampleSource extends BsDatatableSource {

  ExampleSource({
    List? data,
  }) : super(data: data);

  Function(dynamic, int) onEditListener = (value, index) {};
  Function(dynamic, int) onDeleteListener = (value, index) {};

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
            onPressed: () => onEditListener(response.data[index]['typecd'], index),
            prefixIcon: Icons.edit,
            size: BsButtonSize.btnIconSm,
            style: BsButtonStyle.primary,
          ),
          BsButton(
            onPressed: () => onDeleteListener(response.data[index]['typecd'], index),
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
  ExampleSource _source1 = ExampleSource(
      data: [
        {'typeid': 0, 'typecd': 'TP1', 'typenm': 'Type 1'},
        {'typeid': 0, 'typecd': 'TP2', 'typenm': 'Type 2'},
        {'typeid': 0, 'typecd': 'TP3', 'typenm': 'Type 3'},
        {'typeid': 0, 'typecd': 'TP4', 'typenm': 'Type 4'},
        {'typeid': 0, 'typecd': 'TP5', 'typenm': 'Type 5'},
      ]
  );

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
        _source.onEditListener = (typeid, index) {
          _source.controller.reload();
        };
        _source1.onEditListener = (typeid, index) {
          final data = _source1.get(index);
          data['typenm'] = 'Edited';

          _source1.put(index, data);
        };
        _source1.onDeleteListener = (typeid, index) {
          _source1.removeAt(index);
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
          BsCardContainer(title: Text('Datatables'), actions: [
            TextButton(
              onPressed: () {
                _source1.add({'typecd': 'TP1', 'typenm': 'Type ${_source1.datas.length}'});
              },
              child: Text('Add Row'),
            )
          ]),
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
          )),
          BsCardContainer(
            child: BsDatatable(
              source: _source1,
              title: Text('Datatables Data'),
              columns: ExampleSource.columns,
            ),
          )
        ],
      ),
    );
  }
}
