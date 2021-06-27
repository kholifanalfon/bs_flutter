import 'dart:convert';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleSource extends BsDatatableSource {
  BsDatatableResponse _response;

  ExampleSource({
    BsDatatableResponse response = const BsDatatableResponse(),
  }) : _response = response;

  @override
  // TODO: implement countData
  int get countData => _response.countData;

  @override
  // TODO: implement countDataPage
  int get countDataPage => _response.data.length;

  @override
  // TODO: implement countFiltered
  int get countFiltered => _response.countFiltered;

  @override
  BsDataRow getRow(int index) {
    return BsDataRow(index: index, cells: <BsDataCell>[
      BsDataCell(Text('${_response.start + index + 1}')),
      BsDataCell(Text('${_response.data[index]['typecd']}')),
      BsDataCell(Text('${_response.data[index]['typename']}')),
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
  BsDatatableController _controller = BsDatatableController();

  Future loadApi(Map<String, dynamic> params) {
    return http
        .post(
      Uri.parse('http://localhost/api-datatables.php'),
      body: params,
    )
        .then((value) {
      Map<String, dynamic> json = jsonDecode(value.body);
      setState(() {
        _source = ExampleSource(
          response: BsDatatableResponse.createFromJson(json),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: BsDatatable(
        source: _source,
        controller: _controller,
        searchable: true,
        pageLength: true,
        paginations: ['firstPage', 'previous', 'button', 'next', 'lastPage'],
        columns: <BsDataColumn>[
          BsDataColumn(
              label: Text('No'),
              orderable: false,
              searchable: false,
              width: 100.0),
          BsDataColumn(label: Text('Code'), width: 200.0),
          BsDataColumn(label: Text('Name')),
        ],
        serverSide: loadApi,
      ),
    );
  }
}
